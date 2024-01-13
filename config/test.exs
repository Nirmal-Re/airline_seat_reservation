import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :airline_seat_reservation, AirlineSeatReservationWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "d+hMX52QRamwHsVm4qit71xoZJFtcLnx6zWQ7PSjeAotwE8WrhQrWZYn/W6UEJ/z",
  server: false

# In test we don't send emails.
config :airline_seat_reservation, AirlineSeatReservation.Mailer, adapter: Swoosh.Adapters.Test

# Disable swoosh api client as it is only required for production adapters.
config :swoosh, :api_client, false

# Print only warnings and errors during test
config :logger, level: :warning

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
