defmodule AppStarterKit.Repo do
  use Ecto.Repo,
    otp_app: :app_starter_kit,
    adapter: Ecto.Adapters.Postgres
end
