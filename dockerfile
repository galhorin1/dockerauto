FROM alpine

RUN mkdir -p /home/app
RUN apk add --update --no-cache python3 && ln -sf python3 /bin/python
RUN python3 -m ensurepip
RUN pip3 install --no-cache --upgrade pip setuptools

CMD ["python3","/home/app/file"]
