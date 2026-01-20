FROM python:3.9-slim-buster

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

ENV NEW_RELIC_CONFIG_FILE=/app/newrelic.ini

CMD newrelic-admin run-program uvicorn main:app --host 0.0.0.0 --port 8000

