# How to run:


## Airflow docker compose:
curl -LfO 'https://airflow.apache.org/docs/apache-airflow/2.5.2/docker-compose.yaml'

mkdir -p ./dags ./logs ./plugins

echo -e "AIRFLOW_UID=$(id -u)" > .env

docker compose up

if you found any error, just run:

sudo netstat -nlp | grep :80

if you found any port in use like this image below, run:

(imagem de exemplo de output)

sudo kill <proccess_id>

docker compose restart

## Pyspark docker container:
run:

docker run --rm -p 8887:8888 jupyter/pyspark-notebook

docker build -t pyspark_image .

docker run --rm -p 8888:8888 --name pyspark_container pyspark_image

docker exec -u 0 -it pyspark_container bash

