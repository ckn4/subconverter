FROM tindy2013/subconverter:latest
MAINTAINER mikoto

ENV VERSION 0.7.1

WORKDIR /base
RUN apk add tzdata && \
    cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "Asia/Shanghai" > /etc/timezone && \
    apk del tzdata

COPY pref.ini /base

EXPOSE 25500

WORKDIR /base

CMD subconverter
