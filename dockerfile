FROM jupyter/pyspark-notebook

USER root

# Your GCS connector jar file
COPY extra/connectors/gcs-connector-latest-hadoop2.jar /usr/local/spark/jars/

WORKDIR $HOME

# Your GCS JSON acess credentials for bucket
COPY extra/credentials/ornate-spring-379820-00ec27d088ba.json .

# Python/Pyspark jobs location
COPY dags/python_jobs/ .