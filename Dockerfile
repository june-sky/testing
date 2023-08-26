# syntax=docker/dockerfile:1.5

FROM arm64v8/ruby:3.2.2
SHELL ["/bin/bash", "-c"]

RUN mkdir -p /home/app
WORKDIR /home/app

COPY . .
RUN bundle install

CMD ["ruby", "scripts/hello_world.rb"]
