defmodule Realworld.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      RealworldWeb.Telemetry,
      Realworld.Repo,
      {DNSCluster, query: Application.get_env(:realworld, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: Realworld.PubSub},
      # Start the Finch HTTP client for sending emails
      {Finch, name: Realworld.Finch},
      # Start a worker by calling: Realworld.Worker.start_link(arg)
      # {Realworld.Worker, arg},
      # Start to serve requests, typically the last entry
      RealworldWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Realworld.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    RealworldWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
