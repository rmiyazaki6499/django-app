![Django Logo](https://www.djangoproject.com/m/img/logos/django-logo-positive.png)

# Django Starter Template

This repository contains a template skeleton for Django Projects which includes debug_toolbar and django-environ

## Table of Contents

- [Introduction](#introduction)
- [Requirements](#requirements)
  - [Installation](#installation)
- [Steps that need to be taken](#firststeps)
- [Authors](#authors)

## Introduction

I created this repo after working with Django on several projects because I found that although the framework does a great job on helping you build an app fairly quickly out of the box, it does not help you with some good practices with regards to deployment. 

The default settings are typically built for development rather than production and I found it difficult to change my settings after building the project. My inspiration comes from this article here: https://djangostars.com/blog/configuring-django-settings-best-practices/ where the different approaches are listed. 

My approach uses the django-environ package (https://django-environ.readthedocs.io/en/latest/#) which makes it relatively easy to manage your development and production environment variables.

I have also included the django-debug-toolbar (https://django-debug-toolbar.readthedocs.io/en/latest/) which I found useful in debugging and optimizing Django, specifically when it came to how my app queries the database.

## Requirements

- Python 3.6+
- Django 3.0+

### Installation

- On your terminal, clone the repository with Git:

```
git clone https://github.com/rmiyazaki6499/django_starter.git
```

- Next, make sure you create a virtual environment for your project by either using venv or pipenv:
```
python3 -m venv env
source env/bin/activate
```

- In order to install Python dependencies, make sure you have pip (https://pip.pypa.io/en/stable/installing/)
and run this command from the root of the repo:

```
pip3 install -r requirements.txt
```

- We will now migrate the database and collect the static files:
```
python3 manage.py makemigrations
python3 manage.py migrate
python3 manage.py collectstatic
```

- To run the development server, use the following command:

```
python3 manage.py runserver
```

- To run the production server, use the following command:

```
ENV_PATH=.env-prod python3 manage.py runserver
```

Navigate to http://localhost:8000 to view the site on the local server.

**Note: Make sure to add the .env files to your .gitignore. They are not included so that you have a reference to what type of data should be in there.**

## Author

Created by:

- [Ryuichi Miyazaki](https://github.com/rmiyazaki6499)
