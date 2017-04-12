FROM elixir:slim

EXPOSE 4000

RUN mix local.hex --force && \
  mix local.rebar --force && \
  mix archive.install https://github.com/phoenixframework/archives/raw/master/phx_new.ez --force

WORKDIR /application

ADD demo_application .

RUN mix deps.get
RUN mix compile
RUN mix phx.digest

ENTRYPOINT mix phx.server
