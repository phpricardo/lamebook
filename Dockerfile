FROM ruby:3.2.0

RUN apt-get update && apt-get install -qq -y --no-install-recommends \
    build-essential libpq-dev git-all nano vim imagemagick \
    tzdata nodejs yarn

WORKDIR /lamebook
COPY Gemfile /lamebook/Gemfile
COPY Gemfile.lock /lamebook/Gemfile.lock

RUN bundle install
EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]