defmodule Msaidizi.Repo do
  use Ecto.Repo,
    otp_app: :msaidizi,
    adapter: Ecto.Adapters.Postgres
end
