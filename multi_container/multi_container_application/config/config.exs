# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :multi_container_application,
  ecto_repos: [MultiContainerApplication.Repo]

# Configures the endpoint
config :multi_container_application, MultiContainerApplication.Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "5g28AjqJPNHYj9rmTx6wkD6V1hqVvwYRBOHv06rsb7STW6WzWrWTWGomBcX2XH/P",
  render_errors: [view: MultiContainerApplication.Web.ErrorView, accepts: ~w(html json)],
  pubsub: [name: MultiContainerApplication.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
