FROM python:3.11.0-slim

ENV PYTHONUNBUFFERED=1
ENV PYTHONDONTWRITEBYTECODE=1

WORKDIR /app
COPY . /app

RUN --mount=type=cache,id=custom-pip,target=/root/.cache/pip pip install -r /app/requirements.txt


# elsticsearch terminal command
# docker run --name es_container -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" docker.elastic.co/elasticsearch/elasticsearch:7.14.0


#env = Environment data
#
#SECRET_KEY='django-insecure-6+p@%&vyf5cg7sh27nxm)_-5&xm1b#d+g#i+6klys876da&ro5'
#MINIO_ROOT_USER=jfdisjfsidjfsidjf
#MINIO_ROOT_PASSWORD=fjisdtjirtjirg
#MINIO_BUCKET_NAME=yangi
#MINIO_ENDPOINT=http://minio:9000
#
##docker run -p 9000:9000 -p 9001:9001 /quay.io/minio/minio server /data --console-address ":9001"