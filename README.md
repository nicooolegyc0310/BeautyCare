# BeautyCare Management System

## Overview
**BeautyCare** is a Django-based e-commerce management system that facilitates the management of makeup product listings, purchase orders, and user accounts. It provides an admin interface for managing products and orders, and a user-friendly interface for browsing, filtering, and purchasing products.

## Features

- **Admin Interface**:


- **User Interface**:


- **User Authentication**:
**Create a Django Superuser**:

To access the Django admin panel and manage users, create a superuser:
```
python manage.py createsuperuser
```
- Follow the prompts to enter a username, email, and password.

## Tech Stack

- **Backend**: Django
- **Frontend**: HTML, CSS
- **Database**: 
- **Deployment**: Compatible with deployment platforms like Heroku, AWS, and DigitalOcean

## Models Description

## Setup Instructions

- **Create a Virtual Environment**: 
```
python3 -m venv venv
```

- **Activate the Virtual Environment**:
```
source venv/bin/activate
```

- **Install Django**:
```
pip install django
```

- **Install Django Import-Export**:
```
pip install django-import-export
```

- **Install Pillow for ImageField Support**:
```
pip install Pillow
```

- **Install MySQL Client**:
```
pip install mysqlclient
```

## Set Up the Database
- **a. Start MySQL Server**
- **b. Log into MySQL and Create Database**
```
mysql -u your_db_user -p
```
- Once logged in, run the following commands to create a new database:
```
CREATE DATABASE beauty;
USE beauty;
```

- **c. Import the SQL File**
```
mysql -u your_db_user -p beauty < shop_makeupproduct.sql
```

- **d. Replace the 'NAME', 'USER' and 'PASSWORD' in settings.py**
```
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': os.getenv('DB_NAME'),
        'USER': os.getenv('DB_USER'),
        'PASSWORD': os.getenv('DB_PASSWORD'),
        'HOST': '127.0.0.1',
        'PORT': '3306',
    }
}
```

- **Run the Django Server**:
```
python manage.py runserver
```

- **Access the Application**:
Open your web browser and go to:
http://127.0.0.1:8000/
