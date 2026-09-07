defmodule Msaidizi.Repo.Migrations.Task do
  use Ecto.Migration

  def change do
    create table(:tasks) do
      add :description, :text
      add :category, :string
      add :status, :string
      add :priority, :string
      add :due_at, :string

      timestamps()
    end
  end
end
