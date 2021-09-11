from fastapi import FastAPI, File, UploadFile
import numpy as np
from io import BytesIO
from PIL import Image
import tensorflow as tf

app = FastAPI()

MODEL = tf.keras.models.load_model("../models/1")
CLASS_NAME = ["Early Blight","Late Blight","Healthy"]
@app.get('/')
async def ping():
    return "Hello, world"


def read_file_as_image(data) -> np.array:
    image = np.array(Image.open(BytesIO(data)))
    # print(image)
    return image

@app.post('/predict')
async def predict(file: UploadFile = File(...)):
    image = read_file_as_image(await file.read())
    img_batch = np.expand_dims(image,0)

    predictions = MODEL.predict(img_batch)
    predicted_class = CLASS_NAME[np.argmax(predictions[0])]
    confidence = np.max(predictions[0])
    print(predictions[0])

    return {
        'Class : ' : predicted_class,
        'Confidence : ': float(confidence)
    }
    # pass