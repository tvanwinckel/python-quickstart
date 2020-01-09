# python-quickstart

## Makefile
A makefile is included allowing certain functions like:
- Setting up the project and creating a project specific venv.
- Run tests.
- Update already installed dependencies.

## Dependencies:
Dependencies are defined in a requirements.txt file. When setting up the project for the first time, dependencies 
are installed using pip.

When installing additional dependencies use your venv pip to install them. Once installed, you can export them to the 
requirements file by using the following command:  ./venv/bin/pip3 freeze > requirements.txt

## Tests:
Tests run by using Pytest.