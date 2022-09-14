FROM alpcon

RUN mkdir -p /home/app
RUN apt install python

CMD ["echo","docker build done"]
