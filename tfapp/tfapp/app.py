from flask import Flask, request
from tfapp.model import transform, MODEL


def create_app():
    
    app = Flask(__name__)
    
    # Home Route
    # Only allowed method is POST
   
    @app.route("/", methods=['POST'])
    def root():
        # Request data from the POST request
        data = request.form
        # call model.transform() to format 
        # data for Tensorflow model
        pred_data = transform(data)
        # Call Tensorflow model to make prediction
        prediction = MODEL.predict(pred_data)[0][0]
        # Multiply output by 100
        # and convert to int for
        # displaying on the original app
        percent = int(prediction * 100)
        return {'prediction':percent}
    
    return app