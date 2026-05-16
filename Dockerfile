FROM ruby:3.4.1-slim AS base

RUN apt-get update -qq && \
    apt-get install --no-install-recommends -y \
    libpq5 libvips curl && \
    rm -rf /var/lib/apt/lists /var/cache/apt/archives

WORKDIR /rails
ENV RAILS_ENV=production \
    BUNDLE_DEPLOYMENT=1 \
    BUNDLE_PATH=/usr/local/bundle \
    BUNDLE_WITHOUT="development:test"

# Build stage
FROM base AS build

RUN apt-get update -qq && \
    apt-get install --no-install-recommends -y \
    build-essential git pkg-config libpq-dev && \
    rm -rf /var/lib/apt/lists /var/cache/apt/archives

COPY Gemfile Gemfile.lock ./
RUN bundle install && \
    rm -rf ~/.bundle/ "${BUNDLE_PATH}"/ruby/*/cache "${BUNDLE_PATH}"/ruby/*/bundler/gems/*/.git

COPY . .

# Precompile assets (SECRET_KEY_BASE_DUMMY allows build without real secret)
RUN SECRET_KEY_BASE_DUMMY=1 ./bin/rails assets:precompile

# Final stage
FROM base

COPY --from=build "${BUNDLE_PATH}" "${BUNDLE_PATH}"
COPY --from=build /rails /rails

RUN groupadd --system --gid 1000 rails && \
    useradd rails --uid 1000 --gid 1000 --create-home --shell /bin/bash && \
    chown -R rails:rails db log storage tmp public

USER rails:rails

EXPOSE 3000
HEALTHCHECK --interval=30s --timeout=5s --start-period=30s --retries=3 \
    CMD curl -f http://localhost:3000/ || exit 1

CMD ["./bin/rails", "server", "-b", "0.0.0.0", "-p", "3000"]
