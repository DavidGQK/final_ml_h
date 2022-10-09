from flask import Flask, request, jsonify
import numpy as np
import tensorflow_hub as hub

embed = hub.load("https://tfhub.dev/google/universal-sentence-encoder-large/5")
app = Flask(__name__)

@app.route('/v1/models/use:predict', methods=['POST'])
def get_data():
    # r = list(np.random.rand(512))
    json_val = request.json
    query = json_val['inputs']
    p = (embed([query])[0]).numpy().tolist()
    return jsonify(outputs=[p])

if __name__ == "__main__":
    app.run()