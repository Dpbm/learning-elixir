defmodule Ex02.Repo do
  use Ecto.Repo,
    otp_app: :ex02,
    adapter: Ecto.Adapters.Postgres
end
