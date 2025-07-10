# Django Application with CI/CD 

![Design](/static/design.png)

# Prerequisites
make sure you have python installed on your machine

# Deployement 

## Clone the repo
```
git clone https://github.com/addico786/django_app.git
```

## From root directory create images
```
docker build -t my-app:latest . && docker build -t nginx ./nginx
```
## Create Docker Network
```
docker network create my-app-network -d bridge && docker network ls
```

## Run the containers 
```
docker run -d -p 8000:8000 --name my-app-container --network my-app-network my-app:latest && docker run -d -p 80:80 --name nginx-proxy --network my-app-network nginx
```
## See if the containers are running
```
docker ps
```
## Visit port 80
```
localhost:80
```
## Run without docker 
```
python3 manage.py makemigrations && python3 manage.py migrate && python3 manage.py runserver 
```

### Developed by Adnan Khan