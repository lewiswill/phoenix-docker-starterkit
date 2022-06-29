# phoenix-docker-starterkit

Example of a containerised Phoenix web server (app_starter_kit) with PostgreSQL database

Based off this helpful dev.to post [blog post](https://dev.to/hlappa/development-environment-for-elixir-phoenix-with-docker-and-docker-compose-2g17)

1. Install Elixir on your machine https://elixir-lang.org/install.html
2. [Install Phoenix](https://hexdocs.pm/phoenix/installation.html)
3. creare .env file and populate with `DATABASE_URL=postgres://postgres:postgres@db:5432/postgres`
4. 1. locate `/config/dev.exs`
   2. change the IP address from `{127, 0, 0, 1}` to `{0, 0, 0, 0}` in order to reach the phoenix server within docker container.
   3. in same dev.exs file, locate `config :app_starter_kit, AppStarterKit.Repo` and remove `username: "", password: "", hostname: "", database: ""` and replace with `url: System.get_env("DATABASE_URL")`
5. run `docker compose up`
6. If `Postgrex.Protocol error` shows, run `docker-compose run web_app mix ecto.create` to initiate the DB connection between phoenix and db container

***

### Phoenix Documentation:
  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Deployments: https://hexdocs.pm/phoenix/deployment.html
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix

*** 
### Alternatively, to run without docker

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.
