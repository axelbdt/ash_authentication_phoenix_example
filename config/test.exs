import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :ash_auth_phoenix_example, AshAuthPhoenixExampleWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "U4U8ty0hI3xtbgqdT53kH6ZRfURGjyDLvWNYhDuh4rCEfuRdVgVnBSd9TnhxM+Eg",
  server: false

# In test we don't send emails.
config :ash_auth_phoenix_example, AshAuthPhoenixExample.Mailer, adapter: Swoosh.Adapters.Test

# Disable swoosh api client as it is only required for production adapters.
config :swoosh, :api_client, false

# Print only warnings and errors during test
config :logger, level: :warning

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime

config :ash_auth_phoenix_example, AshAuthPhoenixExample.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "ash_auth_phoenix_example_test",
  port: 5432,
  show_sensitive_data_on_connection_error: true,
  pool_size: 10
