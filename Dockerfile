FROM python:3.10-slim

# إنشاء مستخدم عادي لتفادي المخاطر الأمنية (Non-root user)
RUN adduser --disabled-password --gecos '' appuser

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# تحويل الصلاحيات للمستخدم الجديد
USER appuser

EXPOSE 5000

CMD ["python", "app.py"]
