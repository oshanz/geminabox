FROM ruby:3.1-bullseye

RUN mkdir -p /app
WORKDIR /app

COPY . /app
RUN bundle install --jobs=6

EXPOSE 9292

ENTRYPOINT ["rackup", "--host", "0.0.0.0"]
