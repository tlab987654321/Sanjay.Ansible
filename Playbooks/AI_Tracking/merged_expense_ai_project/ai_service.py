from flask import Flask, request, jsonify
import joblib

app = Flask(__name__)

try:
    model = joblib.load('model.pkl')
except FileNotFoundError:
    from sklearn.dummy import DummyClassifier
    model = DummyClassifier(strategy="most_frequent")
    model.fit([["sample"]], ["misc"])
    joblib.dump(model, "model.pkl")

@app.route('/classify', methods=['POST'])
def classify():
    data = request.json.get('description', '')
    category = model.predict([data])[0]
    return jsonify({'category': category})

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5001)
