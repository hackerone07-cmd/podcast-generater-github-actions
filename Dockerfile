FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    python3.10 \
    python3-pip \
    git

RUN pip3 install PyYAML

COPY feed.py /user/bin/feed.py

COPY enterypoint.sh /enterypoint.sh

ENTRYPOINT ["/enterypoint.sh"]