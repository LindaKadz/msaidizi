defmodule Msaidizi.Tasks.Task do
  @moduledoc """
   Task Schema
  """

  use Ecto.Schema
  import Ecto.Changeset

  schema "task" do
    field :description, :string
    field :category, :string
    field :status, :string
    field :priority, :string
    field :due_at, :utc_datetime

    timestamps()
  end

  def changeset(role, attrs) do
    role
    |> cast(attrs, [:description, :category, :status, :priority, :due_at])
  end
end
