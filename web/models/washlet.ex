defmodule PhoenixCheckinWashlet.Washlet do
  use Ecto.Model
  import Ecto.Query

  schema "washlets" do
    field :name,        :string
    field :latitude,    :string
    field :longitude,   :string
    field :status,      :string
    timestamps
    #field :inserted_at, :datetime

    #timestamps([{:inserted_at}])
  end
end
