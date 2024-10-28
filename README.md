# BeautyCare Management System

## Overview
**BeautyCare** is a Django-based e-commerce management system that facilitates the management of makeup product listings, purchase orders, and user accounts. It provides an admin interface for managing products and orders, and a user-friendly interface for browsing, filtering, and purchasing products.

### Key Feature: ChatGPT Integration

BeautyCare leverages **OpenAI's ChatGPT** to provide users with the latest beauty trends. It fetches beauty news using ChatGPT, saving it to the database for each user and displaying it on their dashboard. This feature adds an AI-driven, dynamic content experience, keeping users informed about recent beauty trends and industry updates.

## Features

- **Admin Interface**: Manage products, categories, and orders through Django’s built-in admin panel.

- **User Interface**: Allows users to browse, filter, and view product details, manage purchase orders, and view profiles.

- **User Authentication**: Supports login, logout, and profile management.

- **AI-Powered Beauty News**: Displays recent beauty news fetched from ChatGPT, offering personalized news content for users.

**Create a Django Superuser**:

To access the Django admin panel and manage users, create a superuser:
```
python manage.py createsuperuser
```
- Follow the prompts to enter a username, email, and password.

## Tech Stack

- **Backend**: Django
- **Frontend**: HTML, CSS, LayUI (for styling)
- **Database**: MySQL
- **AI Integration**: OpenAI’s ChatGPT API
- **Deployment**: Compatible with deployment platforms like Heroku, AWS, and DigitalOcean

## Models Description

- **MakeupProduct**: Represents products, including name, brand, price, category, size, color, image, and ratings.
- **PurchaseOrder**: Represents purchase orders, including user, product details, quantity, and total price.
- **UserBeautyNews**: Stores the beauty news fetched from ChatGPT for each user.

## Setup Instructions

### Environment Variables

Before running the application, you need to set up the following environment variables for database credentials and the OpenAI API key:
```
export DB_NAME='beauty_db'
export DB_USER='your_database_username'
export DB_PASSWORD='your_database_password'
export OPENAI_API_KEY='your_openai_api_key'
```

### Environment Set Up

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

- **Install OpenAI Python Client**:
```
pip install openai
```

- **Install MySQL Client**:
```
pip install mysqlclient
```

### Database Set Up

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

### Running the Application

- **Run Database Migrations**:
```
python manage.py makemigrations
python manage.py migrate
```

- **Run the Django Server**:
```
python manage.py runserver
```

- **Access the Application**:
Open your web browser and go to:
http://127.0.0.1:8000/
