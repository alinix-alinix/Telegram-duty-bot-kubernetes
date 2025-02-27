FROM python:3.11-slim

RUN groupadd -r botgroup && useradd -r -g botgroup botuser && mkdir -p /home/botuser && chown -R botuser:botgroup /home/botuser

USER botuser

WORKDIR /app

COPY requirements.txt .
COPY duty_chat_bot.py .

RUN pip install --no-cache-dir -r requirements.txt --user

# Запускаем бота
CMD ["python", "duty_chat_bot.py"]
