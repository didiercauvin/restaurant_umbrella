# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :restaurant_web, RestaurantWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "02X4NHo5bWwgIj4zic5g0zR3neqaLdAzaDbxjPtPYpIRsV32JpEh/wCUo5uGeoYI",
  render_errors: [view: RestaurantWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: RestaurantWeb.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :phoenix, :generators, migration: false, model: false

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
