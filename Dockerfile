FROM python

WORKDIR /app

COPY requirements.txt .

RUN pip3 install -r requirements.txt

RUN pip3 install gunicorn

COPY . .

EXPOSE 8000

CMD gunicorn --bind :8000 --workers 1 --threads 8 --timeout 0 server:app
