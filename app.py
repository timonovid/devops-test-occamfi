from flask import Flask

app = Flask(__name__)

@app.route('/')
def index():
    return '"Hello janbo from Ivan'

app.run(host='0.0.0.0', port=11130)
