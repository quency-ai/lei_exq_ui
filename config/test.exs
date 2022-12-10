import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :lei_exq_ui, LeiExqUiWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "uJO8K+E/atkieJcr106LYU3ybFj6pu8eagl+dqnQeM2XrZzYxuvluooGuoos4MFp",
  server: false

# In test we don't send emails.
config :lei_exq_ui, LeiExqUi.Mailer,
  adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
