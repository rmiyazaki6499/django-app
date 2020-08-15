#!/bin/bash

echo Building project locally...

echo Activating Virtual Environment...
python3 -m venv env
source env/bin/activate

echo Downloading dependencies...
pip3 install -r requirements.txt

echo Migrating and collecting static...
python3 manage.py makemigrations
python3 manage.py migrate
python3 manage.py collectstatic

echo Running Development server...
python3 manage.py runserver
