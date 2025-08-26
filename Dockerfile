FROM python:3.12-slim
ENV PYTHONDONTWRITEBYTECODE=1 PYTHONUNBUFFERED=1
WORKDIR /app
COPY requirements.txt .
RUN apt-get update \
 && apt-get install -y --no-install-recommends curl \
 && rm -rf /var/lib/apt/lists/* \
 && python -m pip install -U pip \
 && pip install -r requirements.txt
COPY src ./src
EXPOSE 8000
CMD ["python","-m","people_service.main"]
