defmodule Msaidizi.Activities.Activity do
  @moduledoc """
   Activities Schema
  """

  use Ecto.Schema
  import Ecto.Changeset

  schema "activities" do
    field :description, :string
    field :category, :string
    field :source, :string
    field :metadata, :map

    timestamps()
  end

  def changeset(role, attrs) do
    role
    |> cast(attrs, [:description, :category, :source, :metadata])
  end
end
