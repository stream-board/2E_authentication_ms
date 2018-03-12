FROM ruby:2.3

RUN mkdir /authentication_ms
WORKDIR /authentication_ms

ADD Gemfile /authentication_ms/Gemfile
ADD Gemfile.lock /authentication_ms/Gemfile.lock

RUN bundle install
ADD . /authentication_ms