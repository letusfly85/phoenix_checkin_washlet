defmodule PhoenixCheckinWashlet.WashletController do
  use PhoenixCheckinWashlet.Web, :controller

  def index(conn, _params) do
    render conn, "index.html", text: "Hello from Controller"
  end
end
