defmodule WorkshopsApp.Repo do
  use Ecto.Repo,
    otp_app: :workshops_app,
    adapter: Ecto.Adapters.Postgres
end
