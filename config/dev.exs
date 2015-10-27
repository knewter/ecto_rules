use Mix.Config

config :ecto_rules, EctoRules.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "ecto_rules_development",
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  pool_size: 10
