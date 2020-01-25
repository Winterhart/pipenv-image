FROM python:3.6.9-alpine3.9 AS essential

RUN apk update && apk add py-pip
RUN pip3 install pipenv 
RUN pip3 install --upgrade pip setuptools wheel
RUN apk add --no-cache postgresql-libs 
RUN apk add --no-cache --virtual .build-deps gcc musl-dev postgresql-dev
RUN pip3 install psycopg2

# Don't forget to copy your files 
#COPY . . 

#TODO: Decided if you want to go with/without Pipfile.lock
# RUN rm Pipfile.lock
# TODO: Uncomment to install dependencies 
#RUN pipenv install 

# TODO: Uncomment to check the dependencies 
#RUN pipenv check

# This is how I run the application
# CMD ["sh", "-c", "pipenv run python app.py"]