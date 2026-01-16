from flask import Flask
from redis import Redis
import os
import socket

app = Flask(__name__)
redis_host = os.environ.get('REDIS_HOST', 'redis')
r = Redis(host=redis_host, port=6379)

@app.route('/')
def hello():
    try:
        count = r.incr('hits')
        hostname = socket.gethostname()
        return f"Hello! Count: {count}. served by: {hostname}"
    except Exception as e:
        return f"Error: {e}"
if __name__ == "__main__":
    app.run(host="0.0.0.0", port=80)

