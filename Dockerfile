# Stage 1: Build & Environment setup
FROM python:3.10-slim AS builder

WORKDIR /app
COPY app.py .

# Stage 2: Minimal Production Image
FROM python:3.10-slim

# إنشاء مستخدم عادي للأمان (Best Security Practice)
RUN adduser --disabled-password appuser
USER appuser

WORKDIR /app
COPY --from=builder /app /app

CMD ["python", "app.py"]
