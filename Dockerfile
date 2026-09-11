FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 5025

CMD ["gunicorn", "--bind", "0.0.0.0:5025", "app:app"]
