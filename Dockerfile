FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.0.8

RUN gem install erb_to_slim --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["erb_to_slim"]
CMD ["--help"]
