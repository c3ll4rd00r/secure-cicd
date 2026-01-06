from flask import Flask, jsonify

app = Flask(__name__)

@app.route("/")
def index():
    return jsonify(message="Hello from Flask app in Docker!")

@app.route("/health")
def health():
    return jsonify(status="Ok")

if __name__ == "__main__":
    # 0.0.0.0 needed so Docker can expose it
    app.run(host="0.0.0.0", port=5000)