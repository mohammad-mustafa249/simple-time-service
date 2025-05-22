from flask import Flask, request, jsonify
from datetime import datetime, timezone

app = Flask(__name__)

@app.route('/')
def time_service():
    return jsonify({
        "timestamp": datetime.now(timezone.utc).isoformat() + "Z",
        "ip": request.remote_addr
    })

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080)
