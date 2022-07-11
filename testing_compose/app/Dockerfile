FROM alpine:latest
RUN apk update && apk add python3

COPY ./to_upload /to_upload
WORKDIR /to_upload
CMD [ "python3", "uploadserv.py" ]
