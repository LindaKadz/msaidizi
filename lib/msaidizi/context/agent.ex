defmodule Msaidizi.Context.Agent do
 @moduledoc """
  Main orchestrator
 """

 def run do
   IO.puts "Personal Agent is running!"

   calendar = Msaidizi.Tools.Calendar.run()
   emails = Msaidizi.Tools.Emails.run()
   invoices = Msaidizi.Tools.Invoices.run()

   IO.inspect(calendar, label: "Calendar")
   IO.inspect(emails, label: "Emails")
   IO.inspect(invoices, label: "Invoices")

   :ok
 end
end
