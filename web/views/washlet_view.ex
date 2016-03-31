defmodule PhoenixCheckinWashlet.WashletView do
  use PhoenixCheckinWashlet.Web, :view

  def render("checkin.json", %{msg: msg}) do
    msg
  end
end
