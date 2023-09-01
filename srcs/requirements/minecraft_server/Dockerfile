FROM alpine:3.17
RUN mkdir /minecraft
WORKDIR /minecraft
RUN apk update && apk upgrade
RUN apk add openjdk17
RUN java -version
COPY tools/startServer.sh /
CMD ["sh", "/startServer.sh"]
