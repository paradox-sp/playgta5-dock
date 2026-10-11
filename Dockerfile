FROM python:3.11-slim

ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

WORKDIR /app
COPY . /app/

RUN useradd -r -u 10001 app
USER app

EXPOSE 8000
CMD ["python3", "serve_local.py", "--host", "0.0.0.0", "--port", "8000"]