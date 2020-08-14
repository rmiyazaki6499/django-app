![Django Logo](https://www.djangoproject.com/m/img/logos/django-logo-positive.png)

# Django App

This repository contains a simple Django app as part of the **Deploying a Production ready React-Express App on EC2 with CI/CD** gist tutorial which you can find [here](https://gist.github.com/rmiyazaki6499/92a7dc283e160333defbae97447c5a83)

## Table of Contents

- [Project Layout](#project-layout)
- [Requirements](#requirements)
- [Setting up the Django-app project](#setting-up-the-django-app-project)
- [Authors](#authors)

## Project Layout

Here is the project layout:

```
django-app
  |___ backend/ (Django Backend settings)
  |   |___ settings.py
  |___ static_files/
  |___ templates/ (Django Templates)
  |   |___ index.html
  |___ manage.py
  |___ requirements.txt

```

The default settings are typically built for development rather than production and I found it difficult to change my settings after building the project. My inspiration comes from this article here: https://djangostars.com/blog/configuring-django-settings-best-practices/ where the different approaches are listed. 

My approach uses the django-environ package (https://django-environ.readthedocs.io/en/latest/#) which makes it relatively easy to manage your development and production environment variables.

I have also included the django-debug-toolbar (https://django-debug-toolbar.readthedocs.io/en/latest/) which I found useful in debugging and optimizing Django, specifically when it came to how my app queries the database.

**Note: Make sure to add the .env files to your .gitignore. They are not included by default in this project so that you have a reference to what type of data should be in there.**

## Requirements

- Python 3.7+
- Django 3.0+

### Setting up the Django-app project

- On your terminal, clone the repository with Git:

```
git clone https://github.com/rmiyazaki6499/django-app.git
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
It should look something like this:

![django-default](https://user-images.githubusercontent.com/41876764/87993902-8d27df00-caa0-11ea-8f66-990932b37ca3.png)


## Author

Created by:

- [Ryuichi Miyazaki](https://github.com/rmiyazaki6499)
