from flask import Flask
import os

app = Flask(__name__)

@app.route("/")
def hello_world():
    print(os.environ.get('SECRET_KEY'))
    print(os.environ.get('MONGO_URI'))
    return "Hello World"

if __name__ == '__main__':
    app.run(host='127.0.0.1', port=4000, debug=True)