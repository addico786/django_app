FROM python:3.12-alpine

WORKDIR /app

COPY  . .

COPY requirements.txt . 
RUN sudo apt-get install virtualenv
RUN virtualenv env 
RUN source env/bin/activate
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt
RUN python manage.py makemigrations
RUN python manage.py migrate


EXPOSE 8000

ENTRYPOINT [ "python3" ]

CMD [ "manage.py", "runserver", "0.0.0.0:8000"] 