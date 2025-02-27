# telegram duty bot

This app is based on a Python script, which allows you to assign a duty to a person.
ChatID, BOTID, and the list of allowed users are stored in GitLab CI variables. Feel free to use your own.
The GitLab CI/CD file allows you to deploy this app to your own Kubernetes cluster.

The Python script can be used without Docker: you can simply declare environment variables containing ChatID, BOTID, and the list of allowed users, and then start it as a regular Python app with the following commands:

pip install aiogram

python Telegram_duty_bot/telegram_duty_bot.py

Have fun!
