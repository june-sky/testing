# syntax=docker/dockerfile:1.5

FROM ruby:3.2.2

RUN mkdir -p /home/app
WORKDIR /home/app

COPY . .
RUN bundle install

CMD ["ruby", "scripts/hello_world.rb"]
