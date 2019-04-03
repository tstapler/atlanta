defmodule Atlanta.Repo do
  use Ecto.Repo,
    otp_app: :atlanta,
    adapter: Ecto.Adapters.Postgres
end
