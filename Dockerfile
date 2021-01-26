FROM ruby:3.0-alpine

# Install OS runtime and development dependencies.
RUN apk add --update --no-cache --virtual \
      runtime-deps \
      binutils-gold \
      build-base \
      curl \
      file \
      g++ \
      gcc \
      git \
      less \
      libstdc++ \
      libffi-dev \
      libc-dev \
      linux-headers \
      libxml2-dev \
      libxslt-dev \
      libgcrypt-dev \
      make \
      netcat-openbsd \
      nodejs \
      openssl \
      pkgconfig \
      postgresql-dev \
      tzdata \
      yarn

WORKDIR /application

# Install application Ruby dependencies.
# RUN gem install bundler
# Throw an error if Gemfile has been modified since Gemfile.lock was generated.
RUN bundle config --global frozen 1
COPY Gemfile Gemfile.lock ./
RUN bundle check || bundle install

# Install application Javascript dependencies.
COPY package.json yarn.lock ./
RUN yarn install --check-files

COPY . ./

ENTRYPOINT ["./docker-entrypoint-rails.sh"]
