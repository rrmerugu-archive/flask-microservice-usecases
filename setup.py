from setuptools import setup

dependencies = [p.rstrip('\n') for p in open('./requirements/requirements.txt')]

setup(
    name='tests',
    version='0.0.1',
    packages=['tests',],
    url='https://github.com/rrmerugu/flask-microservice-usecases',
    license='',
    author='Ravi RT Merugu',
    author_email='rrmerugu@gmail.com',
    description='tests for the code',
    install_requires=dependencies,
)