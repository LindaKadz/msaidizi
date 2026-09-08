defmodule Msaidizi.Tasks.BotTask do
  @moduledoc """
   Task Schema
  """

  use Ecto.Schema
  import Ecto.Changeset

  schema "tasks" do
    field :description, :string
    field :category, :string
    field :status, :string
    field :priority, :string
    field :done, :boolean
    field :due_at, :string
    field :needs_approval, :boolean

    timestamps()
  end

  def changeset(role, attrs) do
    role
    |> cast(attrs, [:description, :category, :status, :priority, :due_at, :done, :needs_approval])
  end
end
