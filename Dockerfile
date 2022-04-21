FROM python

RUN pip3 install gunicorn

ARG USER_ID
RUN useradd -ms /bin/bash USER_ID
USER USER_ID

WORKDIR /app

COPY requirements.txt .

RUN pip3 install -r requirements.txt

COPY . .

EXPOSE 5000

CMD gunicorn --bind :5000 --workers 1 --threads 8 --timeout 0 server:app
