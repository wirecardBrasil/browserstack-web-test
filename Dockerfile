FROM ruby:2.4.0

COPY . /browserstack
WORKDIR /browserstack
RUN bundle install
CMD cucumber features/*
