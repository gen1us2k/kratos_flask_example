FROM python:3.8-slim

WORKDIR /app

COPY ["Pipfile", "shell_scripts/auto_pipenv.sh", "./"]
RUN pip install --no-cache pipenv
RUN pipenv install

COPY . .

EXPOSE 2992
EXPOSE 5000
CMD [ "pipenv", "run", "flask", "run"]
