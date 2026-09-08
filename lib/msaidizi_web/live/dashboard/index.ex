defmodule MsaidiziWeb.IndexDashboardLive do
  use MsaidiziWeb, :live_view

  alias Msaidizi.Context.Tasks

  def mount(_params, _session, socket) do
    tasks = Tasks.all_tasks()

    socket =
      socket
      |> assign(tasks: tasks)

    {:ok, socket}
  end

  defp format_date(date) do
    datetime =
      date
      |> DateTime.from_iso8601()
      |> elem(1)

    formatted = Calendar.strftime(datetime, "%b %-d, %Y at %-I:%M %p")
  end
end
