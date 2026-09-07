defmodule Msaidizi.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      MsaidiziWeb.Telemetry,
      Msaidizi.Repo,
      {DNSCluster, query: Application.get_env(:msaidizi, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: Msaidizi.PubSub},
      # Start the Finch HTTP client for sending emails
      {Finch, name: Msaidizi.Finch},
      # Start a worker by calling: Msaidizi.Worker.start_link(arg)
      # {Msaidizi.Worker, arg},
      # Start to serve requests, typically the last entry
      MsaidiziWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Msaidizi.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    MsaidiziWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
