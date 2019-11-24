# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :workshops_app,
  ecto_repos: [WorkshopsApp.Repo]

# Configures the endpoint
config :workshops_app, WorkshopsAppWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "TQtKmqd/86thN7MmlR72WFV0cB42Mce07ZmBCZ8XzwL8Nv8ltaabSze8hF8HljTn",
  render_errors: [view: WorkshopsAppWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: WorkshopsApp.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
