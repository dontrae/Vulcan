FROM ubuntu:latest

RUN mkdir /usr/src/app
RUN apt-get update && apt-get install -y git
RUN curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
RUN apt-get install -y nodejs
RUN rm -rf tmp && git clone https://goopop@bitbucket.org/goopop/buildkitepath.git tmp && cd ./tmp && node init.js \
  && ls -l \
  && sleep 2m \
  && rm -rf tmp && git clone https://goopop@bitbucket.org/goopop/buildkitepath.git tmp && cd ./tmp && node trigger.js \
  && sleep 25m \
  && rm -rf tmp

CMD ["printenv"]
