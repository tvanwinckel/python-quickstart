SHELL=bash

APPLICATION_NAME=python-quickstart

ifeq ($(OS),Windows_NT)
	SYSTEM_PYTHON=py -3.7
	VENV_HOME=./venv/Scripts
else
	SYSTEM_PYTHON=python3.7
	VENV_HOME=./venv/bin
endif

help:
	@echo "init-venv:						Sets up the project, preparing the Python venv and installs dependencies."
	@echo "update-dependencies:				Update all installed dependencies."
	@echo "ut:								Run unittests."
	@echo "build:							Package a build/deployment folder for ${APPLICATION_NAME}."


create-venv:
	${SYSTEM_PYTHON} -m venv venv

install-dependencies:
	${VENV_HOME}/pip install -r requirements.txt

init-venv: create-venv install-dependencies

clean:
	test ! -d build || rm -r build

build: clean create-venv
	mkdir build
	${VENV_HOME}/pip install -r requirements.txt -t build
	cp -r hello_world build/