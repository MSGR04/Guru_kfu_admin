FROM python:3.9-slim

# Установка зависимостей
WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Копируем код админ-бота
COPY . .

# Указываем команду запуска бота
CMD ["python", "bot_admin.py"]
