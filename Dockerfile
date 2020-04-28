FROM python:3.6

ENV product_name="vocabulary-reminder"
ENV product_version="0.1"

RUN pip install --upgrade -q \
pip \
slackclient==2.3.1 \
certifi==2019.9.11

ENV LOG_LEVEL WARNING


COPY app /app
WORKDIR /app
