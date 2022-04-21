FROM python

RUN pip3 install gunicorn

RUN useradd -ms /bin/bash bacchilu
USER bacchilu

WORKDIR /app

COPY requirements.txt .

RUN pip3 install -r requirements.txt

COPY . .

EXPOSE 5000

CMD gunicorn --bind :5000 --workers 1 --threads 8 --timeout 0 server:app
