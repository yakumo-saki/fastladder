FROM ruby:2.6-bullseye

ENV PORT=3001
ENV RAILS_ENV=production

WORKDIR /fastladder

# build
# hadolint ignore=DL3008
RUN apt-get update \
    && apt-get install  --no-install-recommends -y tini nodejs \
    && apt-get clean && rm -rf /var/lib/apt/lists/*
RUN gem install bundler:1.16.2 \
    && bundle -j9 \
    && bundle exec rake assets:precompile

EXPOSE 3001
ENTRYPOINT ["tini", "--"]
