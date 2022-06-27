# phoenix-docker-starterkit

loosely based off this helpful dev.to post [blog post](https://dev.to/hlappa/development-environment-for-elixir-phoenix-with-docker-and-docker-compose-2g17)

Ensure that IP address found in dev.exs is changed from {127, 0, 0, 1} to {0, 0, 0, 0} in order to reach the phoenix server within docker container.

1) run docker compose up
2) Postgrex.Protocol error will show
3) run docker-compose run web_app mix ecto.create, to create a DB connection

# AppStarterKit

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
