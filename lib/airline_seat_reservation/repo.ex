defmodule AirlineSeatReservation.Repo do
  use Ecto.Repo,
    otp_app: :airline_seat_reservation,
    adapter: Mongo.Ecto
end
