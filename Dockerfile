FROM i386/ubuntu:xenial

RUN apt-get update && \
    apt-get install -y kannel

COPY kannel.conf /etc/kannel/

CMD ["wapbox", "/etc/kannel/kannel.conf"]