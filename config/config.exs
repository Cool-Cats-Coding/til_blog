# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :til_blog,
  ecto_repos: [TilBlog.Repo]

# Configures the endpoint
config :til_blog, TilBlogWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "cDlCd3pVxGqm5i0o9iYxWmfNtpJM0l7PgCFJTDGSNwa+lMW+MxHJoATpYLT4wPt8",
  render_errors: [view: TilBlogWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: TilBlog.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
