defmodule LeiExqUi.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      LeiExqUiWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: LeiExqUi.PubSub},
      # Start the Endpoint (http/https)
      LeiExqUiWeb.Endpoint
      # Start a worker by calling: LeiExqUi.Worker.start_link(arg)
      # {LeiExqUi.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: LeiExqUi.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    LeiExqUiWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
