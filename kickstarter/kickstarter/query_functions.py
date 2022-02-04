import psycopg2
from os import getenv
from kickstarter.queries import create_prediction_table

# Grabbing environment variables for establishing
# PostgreSQL database connection.
DBNAME = getenv('DBNAME')
USER = getenv('USER')
PASSWORD = getenv('PASSWORD')
HOST = getenv('HOST')


# Creating a cursor and connection object.
def connect_cursor(dbname=DBNAME, user=USER, password=PASSWORD, host=HOST):
    pg_conn = psycopg2.connect(dbname=dbname, user=user, password=password, host=host)
    pg_cursor = pg_conn.cursor()
    return pg_conn, pg_cursor

CONN, CURSOR = connect_cursor()


# Function that inputs the form data and a prediction
# and commits the data to the PostgreSQL database.
def insert_table(data_dict, prediction):
    # Removing single quotes from strings
    # to not upset the SQL query.
    clean_dict = {}
    for key, value in data_dict.items():
        if isinstance(value, str):
            clean_dict[key] = value.replace("'",'_')
        else:
            clean_dict[key] = value
    # Creating a tuple of the information to be inserted.
    temp_tuple = (clean_dict['project_name'], 
                  clean_dict['category'],
                  clean_dict['description'], 
                  clean_dict['city_name'], 
                  clean_dict['country'],
                  clean_dict['goal'], 
                  clean_dict['currency'], 
                  int(clean_dict['days_of_campaign']),
                  int(clean_dict['launch_month']),
                  prediction)
    # Inserting the tuple.
    CURSOR.execute(f'''
        INSERT INTO model_prediction ("projectname", "category", "description", "city", "country", "goal", "currency", "duration", "month", "prediction")       
        VALUES {temp_tuple};''')
    # Committing the changes to the database.
    CONN.commit()
    return


# Use this to create the database if it does not already exist
if __name__ == '__main__':
    CURSOR.execute(create_prediction_table)
    CONN.commit()