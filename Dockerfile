FROM python
LABEL maintainer="Luca Bacchi <bacchilu@gmail.com> (https://github.com/bacchilu)"

WORKDIR /app

ARG UID
ARG GID
ARG MODE=PROD

RUN groupadd -g "${GID}" python
RUN useradd --create-home --no-log-init -u "${UID}" -g "${GID}" python
RUN chown python:python -R /app

USER python

COPY --chown=python:python requirements.txt .

RUN pip3 install -r requirements.txt

ENV PYTHONPATH="."
ENV PATH="${PATH}:/home/python/.local/bin"
ENV USER="python"
ENV MODE="${MODE}"

COPY --chown=python:python ./src .

EXPOSE 8000

RUN pip3 install gunicorn

CMD ["gunicorn", "--bind", ":8000", "--workers", "1", "--threads", "8", "--timeout", "0", "server:app"]
