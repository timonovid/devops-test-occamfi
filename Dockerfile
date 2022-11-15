FROM python:3.12.0a1-slim-buster

USER root

RUN useradd -ms /bin/bash flaskapp

USER flaskapp

WORKDIR /home/flaskapp

COPY ./app.py ./app.py

WORKDIR /home/flaskapp

RUN pip install  \
    --disable-pip-version-check \
    --no-cache-dir \
    flask==2.2.2

EXPOSE 11130

ENTRYPOINT [ "python", "app.py" ]