defmodule Msaidizi.Context.Tasks do
 @moduledoc """
  Tasks context
 """

  import Ecto.Query, warn: false
  alias Msaidizi.Tasks.BotTask
  alias Msaidizi.Repo

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking tasks.

  ## Examples

      iex> change_task(task)
      %Ecto.Changeset{data: %BotTask{}}

  """
  def change_task(%BotTask{} = task, attrs \\ %{}) do
    BotTask.changeset(task, attrs)
  end

 @doc """
  Creates a task.

  ## Examples

      iex> create_task(%{description: "task New", due_date: "12:00"...})
      {:ok, %Task{}}

      iex> create_task(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_task(task_params) do
    %BotTask{}
    |> change_task(task_params)
    |> Repo.insert()
  end

  @doc ~S"""
  Gets all the tasks in the database

  ## Examples

      iex> all_tasks()
      [%Task{id: x, description: y}, %task{id: z, description: r}, ...]

  """

  def all_tasks do
    Repo.all(BotTask)
  end
end
