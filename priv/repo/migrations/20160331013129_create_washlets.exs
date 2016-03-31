defmodule PhoenixCheckinWashlet.Repo.Migrations.CreateWashlets do
  use Ecto.Migration

  def change do
    create table(:washlets) do
      add :name,      :string
      add :latitude,  :string
      add :longitude, :string
      add :status,    :string
      timestamps
    end
  end
end
