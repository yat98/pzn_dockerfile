FROM golang:1.18-alpine

WORKDIR /app

RUN addgroup -S yatgroup
RUN adduser -S -D -h /app yat yatgroup
RUN chown -R yat:yatgroup /app 
USER yat

COPY main.go /app
EXPOSE 8080
CMD go run main.go