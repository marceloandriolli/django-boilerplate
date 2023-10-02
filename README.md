# django-boilerplate

This boilerplate allow you to quickly setup any Django project and deploy a prototype as soon as possible.

### That includes:
* DockerFiles
* Docker compose file
* Heroku config file
* Pytest config file
* Gunicorn
* PostgreSQL
* Sets vars env properly
* Support static files by whitenoise lib


### Before run the:

##### Change the permission of files:
* `sudo chown -R $USER:$USER .`

##### Copy the env file sample to create you .env file:
* `cp contrib/env-sample .env`

##### Generate the secret key:
* `docker-compose run web python contrib/secret_gen.py`
* Copy them to your .env

##### Change the var env DATABASE_URL in your .env to your desired config:
* It should be something like: `DATABASE_URL=postgres://YOUR_USER_DB_NAME:YOUR_DB_PASSWORD@YOUR_DB_HOST:PORT/NAME`

##### Change the project nome boilerplate to your desired project name:
* Make a search to find the "project_name" and change
* Probably you gonna change those files:
    * docker-compose.yml
    * manage.py
    * Procfile
    * pytest.ini
    * asgi.py
    * settings.py
    * urls.py
    * wsgi.py

#### Build the project:
* `docker compose build --no-cache`

#### Run the project:
* `docker compose up`
*  If everything works then open your browser and access http://0.0.0.0:8000/ 
