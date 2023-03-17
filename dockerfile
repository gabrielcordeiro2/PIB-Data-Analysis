FROM jupyter/pyspark-notebook

WORKDIR /home/jovyan/work/

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Adicionando os parâmetros solicitados
ENV CHOWN_HOME=yes
ENV CHOWN_EXTRA_OPTS='-R'
ENV NB_USER="${USER}"

EXPOSE 8888


# to build image: docker build -t pyspark-jupyter-image .
# to run container: docker run -p 8888:8888 pyspark-jupyter-image