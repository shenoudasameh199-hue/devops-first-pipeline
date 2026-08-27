FROM python:3.10-slim AS builder
WORKDIR /app
COPY app.py .

FROM python:3.10-slim
RUN adduser --disabled-password appuser
USER appuser
WORKDIR /app
COPY --from=builder /app /app
CMD ["python", "app.py"]
