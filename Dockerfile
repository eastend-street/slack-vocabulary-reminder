FROM python:3.6

ENV product_name="slack-vocabulary-reminder"
ENV product_version="0.1"
ENV LOG_LEVEL WARNING


RUN mkdir /${product_name}/
COPY /app /${product_name}/app
WORKDIR /${product_name}/app

RUN pip install --upgrade -q \
pip \
slackclient==2.3.1 \
certifi==2019.9.11