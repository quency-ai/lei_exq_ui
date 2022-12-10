defmodule LeiExqUiWeb.PageController do
  use LeiExqUiWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
