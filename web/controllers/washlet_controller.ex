defmodule PhoenixCheckinWashlet.WashletController do
  use PhoenixCheckinWashlet.Web, :controller

  def index(conn, _params) do
    render conn, "index.html", text: "Hello from Controller"
  end

  def checkin(conn, _params) do
    dict = HashDict.new
    dict = HashDict.put(dict, :key , %{:key => _params["key"]})

    render conn, msg: dict
  end
end
