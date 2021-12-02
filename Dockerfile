FROM python:3.8
COPY . /app
WORKDIR /app
RUN pip install --upgrade pip && pip install poetry
RUN poetry install
CMD python -m poetry run uvicorn acme_health.main:app --host 0.0.0.0 --port $PORT
