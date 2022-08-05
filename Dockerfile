FROM python:3.7.3-stretch

WORKDIR /app

COPY . app.py /app/
COPY . model_data /app/

# hadolint ignore=DL3013
RUN pip install --upgrade --no-cache-dir pip &&\
    pip install --no-cache-dir --trusted-host pypi.python.org -r requirements.txt

EXPOSE 80

CMD [ "python", "app.py" ]
