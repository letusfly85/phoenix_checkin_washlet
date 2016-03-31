defmodule PhoenixCheckinWashlet.WashletView do
  use PhoenixCheckinWashlet.Web, :view

  def render("checkin.json", %{msg: msg}) do
    msg
  end

  def render("list.json", %{washlets: washlets}) do
    #washlet = hd washlets
    Enum.reduce(washlets, %{}, fn(washlet, acc) ->
      Map.put(acc, Integer.to_string(washlet.id),
             %{name: washlet.name, latitude: washlet.latitude, longitude: washlet.longitude, status: washlet.status})
    end)
  end

  def render("register.json", %{washlets: washlets}) do
    washlets
  end
end
