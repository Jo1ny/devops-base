FROM python:3.11-alpine

RUN apk update && apk upgrade --no-cache

WORKDIR /app

COPY logger.py .

CMD ["python", "logger.py"]
