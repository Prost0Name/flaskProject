# Используем базовый образ Python
FROM python:3.11

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем файлы приложения
COPY app/ .

# Устанавливаем зависимости
RUN pip install --no-cache-dir -r requirements.txt

# Открываем порт для Flask
EXPOSE 5000

# Запускаем Flask сервер
CMD ["python", "app.py"]
