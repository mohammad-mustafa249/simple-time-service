from flask import Flask, jsonify, request
from datetime import datetime, timezone

app = Flask(__name__)

@app.route("/", methods=["GET"])
def index():
    timestamp = datetime.utcnow().isoformat() + "Z"
    ip = request.remote_addr
    return jsonify({"timestamp": timestamp, "ip": ip})

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080)
