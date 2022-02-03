import tensorflow as tf

# Loading the pre-built model from local directory
MODEL = tf.keras.models.load_model('/app/tfapp/saved_model/kick_model')


def transform(data_dict):
    # Create empty dictionary
    transformed_data = {}
    for key, value in data_dict.items():
        # If the value is a string, convert it to lowercase
        # for model quality control.
        if isinstance(value, str):
            value = value.lower()
        # If the dictionary key is project_name 
        # or description, return the length of the input.
        if key == 'project_name' or key =='description':
            transformed_data[key] = [len(value)]
        # If the dictionary key is launch_month, 
        # days_of_campaign, or goal, convert the inputted
        # string into an integer.
        elif key == 'launch_month' or key == 'days_of_campaign' or key == 'goal':
            transformed_data[key] = [int(value)]
        # The rest are already integers so 
        # just assign.
        else:
            transformed_data[key] = [value]
    # Convert the dictionary values to tensors
    input_dict = {name: tf.convert_to_tensor([value]) for name, value in transformed_data.items()}
    return input_dict