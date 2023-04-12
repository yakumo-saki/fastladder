# syntax=docker/dockerfile:1.3-labs
FROM ruby:2.7-bullseye

ENV PORT=3001
ENV RAILS_ENV=production

COPY . /fastladder

WORKDIR /fastladder

RUN ls -alh

# build
# hadolint ignore=DL3008
RUN <<EOF
  apt-get update
  apt-get install --no-install-recommends -y tini nodejs
  apt-get clean
  rm -rf /var/lib/apt/lists/*
EOF

RUN <<EOF
  gem install bundler:1.16.2 
  bundle install 
  bundle exec rake assets:precompile
EOF

EXPOSE 3001
ENTRYPOINT ["tini", "--"]
