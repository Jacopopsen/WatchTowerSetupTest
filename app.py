from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello_world():
    while(true):
        print("Test")
    return 'Hello, fucker 2.0!'