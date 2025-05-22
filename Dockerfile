FROM python:3.12-slim

RUN addgroup --system appgroup && adduser --system --ingroup appuser

WORKDIR /app

COPY requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
COPY app.py

RUN chown -R appuser:appgroup /app
USER appuser

EXPOSE 8080

CMD ["python", "app.py"]

