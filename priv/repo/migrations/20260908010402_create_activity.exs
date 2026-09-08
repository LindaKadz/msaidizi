defmodule Msaidizi.Repo.Migrations.CreateActivity do
  use Ecto.Migration

  def change do
    create table(:activities) do
      add :description, :text
      add :category, :string
      add :source, :string
      add :metadata, :map

      timestamps()
    end
  end
end
