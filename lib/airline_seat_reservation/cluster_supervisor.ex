defmodule AirlineSeatReservation.ClusterSupervisor do
  use Supervisor

  def start_link(opts) do
    Supervisor.start_link(__MODULE__, :ok, opts)
  end

  def init(:ok) do
    children = [
      {Task, fn -> connect_nodes() end}
    ]

    Supervisor.init(children, strategy: :one_for_one)
  end

  defp connect_nodes do
    # Wait for a certain period of time to ensure that all nodes have started
    :timer.sleep(5000)

    # List of all nodes
    nodes = String.split(System.get_env("ALLNODES", ","))

    for node <- nodes do
      if Node.ping(node) == :pong do
        Node.connect(node)
      end
    end
  end
end
