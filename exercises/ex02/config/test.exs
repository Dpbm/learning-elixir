import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :ex02, Ex02.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "ex02_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :ex02, Ex02Web.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "J8o1jNv1nsg8CQz6K9OPjQaA78+44AsKpPicGRJh6JGWV0EirE/9uQAttn8Sxnye",
  server: false

# In test we don't send emails.
config :ex02, Ex02.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
