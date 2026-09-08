defmodule Msaidizi.Repo.Migrations.Task do
  use Ecto.Migration

  def change do
    create table(:tasks) do
      add :description, :text
      add :category, :string
      add :status, :string
      add :priority, :string
      add :due_at, :string
      add :done, :boolean, default: false
      add :needs_approval, :boolean, default: true

      timestamps()
    end
  end
end
