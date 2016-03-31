defmodule PhoenixCheckinWashlet.WashletController do
  use PhoenixCheckinWashlet.Web, :controller
  alias PhoenixCheckinWashlet.Washlet

  def index(conn, _params) do
    render conn, "index.html", text: "Hello from Controller"
  end

  def checkin(conn, _params) do
    dict = HashDict.new
    dict = HashDict.put(dict, :key , %{:key => _params["key"]})

    render conn, msg: dict
  end

  def list(conn, _params) do
    query = from w in Washlet,
      select: w
    washlets = query |> Repo.all
    
    render conn, washlets: washlets
  end

  def register(conn, _params) do
    washlet = %Washlet{name: _params["name"],
                       latitude: _params["latitude"], longitude: _params["longitude"],
                       status: _params["status"]}
    Repo.insert!(washlet)
    
    render conn, washlets: nil
  end
end
