FROM huntingbots2/huntingbots-tghbot:latest

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

RUN python3 -m venv tgh-env

COPY requirements.txt .
RUN tgh-env/bin/pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["bash", "start.sh"]
