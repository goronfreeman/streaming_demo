FROM ruby:2.3.7

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /streaming2
WORKDIR /streaming2

COPY Gemfile /streaming2/Gemfile
COPY Gemfile.lock /streaming2/Gemfile.lock

RUN bundle install

COPY . /streaming2
