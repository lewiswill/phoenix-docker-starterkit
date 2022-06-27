# phoenix-docker-starterkit

Aim of this repo is to provide a useful dockerised starter kit, that you can just fire up and begin messing with Elixir/Phoenix.

Based off this helpful dev.to post [blog post](https://dev.to/hlappa/development-environment-for-elixir-phoenix-with-docker-and-docker-compose-2g17)

Ensure that IP address found in dev.exs is changed from `{127, 0, 0, 1}` to `{0, 0, 0, 0}` in order to reach the phoenix server within docker container.

1) run `docker compose up`
2) Postgrex.Protocol error will show
3) run `docker-compose run web_app mix ecto.create` to create a DB connection between phoenix and DB containers
