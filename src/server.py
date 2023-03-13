import os

from flask import Flask

app = Flask(__name__)


@app.route("/")
def hello_world():
    return f"Hello, Flask! - 1.0.0 ({os.environ.get('MODE')})"
