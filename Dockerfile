FROM python:3.6-slim-stretch

COPY requirements.txt ./
RUN apt-get update \
    && apt-get install -y --no-install-recommends gcc build-essential libsnappy-dev\
    && rm -rf /var/lib/apt/lists/* \
    && pip install --no-cache-dir -r requirements.txt \
    && apt-get purge -y --auto-remove gcc build-essential
