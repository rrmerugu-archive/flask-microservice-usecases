from flask import Flask, request
from flask_restful import Resource, Api
from flask_cors import CORS

app = Flask(__name__)

api = Api(app)
CORS(app)


class HelloWorld(Resource):
    def get(self):
        text = request.args.get('text')
        return {"message": text}


api.add_resource(HelloWorld, '/')

if __name__ == "__main__":
    run = app.run(debug=True)
