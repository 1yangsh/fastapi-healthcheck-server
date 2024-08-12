FROM python:3.12-slim

COPY . /app
WORKDIR /app

RUN pip install pip --upgrade && \
    pip install -r requirements.txt

ENV PYTHONPATH = ./app

ENTRYPOINT ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]