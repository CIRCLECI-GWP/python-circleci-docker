FROM python:alpine

WORKDIR /app

COPY requirements.txt /app

RUN --mount=type=cache,target=/root/.cache/pip \
    pip install -r requirements.txt

COPY . /app

CMD ["python3", "app.py"]