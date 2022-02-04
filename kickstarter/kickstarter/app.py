from flask import Flask, render_template, request
from os import getenv
import kickstarter.query_functions as qf
import requests
import json


def create_app():
    
    app = Flask(__name__)
    
    # Home Route
    @app.route("/", methods=['POST', 'GET'])
    @app.route("/index.html", methods=['POST', 'GET'])
    def root():
        return render_template('index.html', title='tst title')
    
    # Route to the information form
    @app.route("/prediction.html", methods=['POST', 'GET'])
    def prediction():
        return render_template('prediction.html', title='prediction')
    
    # Route for displaying the prediction
    # When accessed directly it asks the user to redirect.
    # When accessed through 'POST' method, 
    # it attempts to make a prediction and insert
    # the data into a PostgreSQL database.
    # If any of this fails, it prompts the user with an error.
    @app.route('/data', methods = ['POST', 'GET'])
    def data():
        # If method is a GET request, throw error.
        if request.method == 'GET':
            return f"The URL /data is accessed directly. Try going to '/prediction.html' to submit form"
        # If method is POST request, attempt to make prediction and add data.
        if request.method == 'POST':
            try:
                # Requesting data from the web page
                form_data = request.form
                # Requesting the prediction from
                # the simple web server built on heroku.
                x = requests.post(url='https://kick-model-ds3x.herokuapp.com/', data=form_data, timeout=120)
                
                # USED FOR TESTING LOCALLY
                # x = requests.post(url='http://127.0.0.1:5000/', data=form_data, timeout=120)
                
                # Transforming the data from a string
                # into a JSON object.
                prediction = json.loads(x.text)
                # Calling the value.
                chance = prediction['prediction']
                # Calling query_functions.py to insert
                # the data into the PostgreSQL database.
                qf.insert_table(form_data, chance)
                return render_template('data.html', form_data=form_data, chance=chance)
            except:
                return f'Please be sure you are correctly formatting your inputs.'

    return app
