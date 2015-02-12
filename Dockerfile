FROM ruby:1.9.3
RUN apt-get update && apt-get install -y mysql-client --no-install-recommends && rm -rf /var/lib/apt/lists/*
RUN mkdir /myapp
WORKDIR /myapp
ADD rails/Gemfile /myapp/Gemfile
RUN gem install rails --version 3.2.21
RUN bundle install
ADD rails /myapp
