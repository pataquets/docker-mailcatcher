FROM ruby:2.6

ENV MAILCATCHER_VERSION 0.5.12

RUN \
  gem install mailcatcher --no-document --version ${MAILCATCHER_VERSION}

EXPOSE 1080
EXPOSE 1025

ENTRYPOINT [ "mailcatcher", "--ip=0.0.0.0", "--foreground" ]
