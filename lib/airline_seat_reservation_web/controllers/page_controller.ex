defmodule AirlineSeatReservationWeb.PageController do
  use AirlineSeatReservationWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, layout: false)
  end

  def book(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    json(conn, %{book: "book"})
  end

  def unbook(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    json(conn, %{unbook: "unbook"})
  end

  def allSeats(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    result = App.ReservationServer.testing_server()
    json(conn, %{seats: result})
  end
end
