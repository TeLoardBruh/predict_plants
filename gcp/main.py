from google.cloud import storage
import tensorflow as tf
from PIL import Image
import numpy as np


model = None
class_names = ['Pepper bell Bacterial spot', 'Pepper bell healthy', 'Potato Early_blight', 'Potato Late_blight', 'Potato healthy', 'Tomato Bacterial spot', 'Tomato Early blight', 'Tomato Late_blight','Tomato Leaf_Mold', 'Tomato Septoria leaf_spot', 'Tomato Spider mites Two spotted spider mite', 'Tomato Target Spot', 'Tomato Tomato YellowLeaf Curl Virus', 'Tomato Tomato mosaic virus', 'Tomato_healthy']

BUCKET_NAME = "plants_v1"


def download_blob(bucket_name, source_blob_name, destination_file_name):
    storage_client = storage.Client()
    bucket = storage_client.get_bucket(bucket_name)
    blob = bucket.blob(source_blob_name)
    blob.download_to_filename(destination_file_name)
    print(f"Blob {source_blob_name} downloaded to {destination_file_name}.")


def predict(request):
    global model
    if model is None:
        download_blob(
            BUCKET_NAME,
            "models/plants.h5",
            "/tmp/plants.h5"
        )
        model = tf.keras.models.load_model("/tmp/plants.h5")
    # open image
    image = request.files["file"]
    # open convert to RGB and into np.py
    image = np.array(
        Image.open(image).convert("RGB").resize((256, 256))  # image resizing
    )
    image = image/255
    img_array = tf.expand_dims(image, 0)
    predictions = model.predict(img_array)
    print("Predictions:", predictions[0])

    predicted_class = class_names[np.argmax(predictions[0])]
    confidence = round(100 * (np.max(predictions[0])), 2)

    return {"class": predicted_class, "confidence": confidence, "hello : ": "world"}


def cors(request):
    # For more information about CORS and CORS preflight requests, see:
    # https://developer.mozilla.org/en-US/docs/Glossary/Preflight_request

    # Set CORS headers for the preflight request
    if request.method == 'OPTIONS':
        # Allows GET requests from any origin with the Content-Type
        # header and caches preflight response for an 3600s
        headers = {
            'Access-Control-Allow-Origin': '*',
            'Access-Control-Allow-Methods': 'GET',
            'Access-Control-Allow-Headers': 'Content-Type',
            'Access-Control-Max-Age': '3600'
        }

        return ('', 204, headers)

    # Set CORS headers for the main request
    headers = {
        'Access-Control-Allow-Origin': '*'
    }
    global model
    if model is None:
        download_blob(
            BUCKET_NAME,
            "models/plants.h5",
            "/tmp/plants.h5"
        )
        model = tf.keras.models.load_model("/tmp/plants.h5")
    # open image
    image = request.files["file"]
    # open convert to RGB and into np.py
    image = np.array(
        Image.open(image).convert("RGB").resize((256, 256))  # image resizing
    )
    image = image/255
    img_array = tf.expand_dims(image, 0)
    predictions = model.predict(img_array)
    print("Predictions:", predictions[0])

    predicted_class = class_names[np.argmax(predictions[0])]
    confidence = round(100 * (np.max(predictions[0])), 2)
    return ({"class": predicted_class, "confidence": confidence, "hello : ": "world"}, 200, headers)
