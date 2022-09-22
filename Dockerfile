FROM ruby:3.1-bullseye

RUN mkdir -p /app
RUN mkdir -p /data
WORKDIR /app

COPY . /app
RUN bundle install --jobs=6

EXPOSE 9292

ENTRYPOINT [ "puma", "-b", "tcp://0.0.0.0:9292" ]
