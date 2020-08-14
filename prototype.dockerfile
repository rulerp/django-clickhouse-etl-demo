FROM python:3
ENV PYTHONUNBUFFERED 1
RUN mkdir /app
WORKDIR /app
COPY hyperskill_prototype/* /app/
RUN pip install -r requirements.txt
COPY . /app/
RUN python manage.py runserver
