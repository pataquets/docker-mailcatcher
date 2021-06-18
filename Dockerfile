FROM ruby:2

ENV MAILCATCHER_VERSION 0.7.1

RUN \
  gem install mailcatcher --no-document --version ${MAILCATCHER_VERSION}

EXPOSE 1080
EXPOSE 1025

ENTRYPOINT [ "mailcatcher", "--ip=0.0.0.0", "--foreground" ]
