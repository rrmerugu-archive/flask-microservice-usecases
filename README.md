# Flask Example


This repository is a collection of differnt example usecases/codes to write microservices with Flask.
All the examples are show with best practices to including automation tests.

Projects will contain scraip


This is a basic example of Flask with simple RESTful API.


## Running the Application

### In development

Use `python app.py` which starts with `debug=True` as show in the example.


### In Production

In production use `uwsgi` or `gunicorn` based on your choice and requirement, for this example
I am using `uwsgi`, use `uwsgi --http :5000 --wsgi-file wsgi.py --master --processes 4 --threads 2`.


## Running the Tests


