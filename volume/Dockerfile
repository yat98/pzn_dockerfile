FROM golang:1.18-alpine

ENV APP_PORT=8080
ENV APP_DATA=/logs

RUN mkdir app
RUN mkdir ${APP_PORT}
RUN ls -al
COPY main.go app

VOLUME ${APP_DATA}
EXPOSE ${APP_PORT}

CMD go run app/main.go