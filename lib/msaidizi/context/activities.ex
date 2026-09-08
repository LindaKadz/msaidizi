defmodule Msaidizi.Context.Activities do
 @moduledoc """
  activitys context
 """

  import Ecto.Query, warn: false
  alias Msaidizi.Activities.Activity
  alias Msaidizi.Repo

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking activities.

  ## Examples

      iex> change_activity(activity)
      %Ecto.Changeset{data: %Activity{}}

  """
  def change_activity(%Activity{} = activity, attrs \\ %{}) do
    Activity.changeset(activity, attrs)
  end

 @doc """
  Creates a activity.

  ## Examples

      iex> create_activity(%{description: "activity New", source: "Gmail"...})
      {:ok, %Activity{}}

      iex> create_activity(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_activity(activity_params) do
    %Activity{}
    |> change_activity(activity_params)
    |> Repo.insert()
  end

  @doc ~S"""
  Gets all the activities in the database

  ## Examples

      iex> all_activitis()
      [%Activity{id: x, description: y}, %Activity{id: z, description: r}, ...]

  """

  def all_activitys do
    Repo.all(Activity)
  end
end
