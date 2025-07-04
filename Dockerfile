FROM python:3.12-alpine

WORKDIR /app

COPY  . .

COPY requirements.txt . 
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt
RUN python manage.py makemigrations
RUN python manage.py migrate


EXPOSE 8000

CMD ["python", "manage.py", "runserver"] 