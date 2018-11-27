defmodule RumblWeb.UserView do
  use RumblWeb, :view # this is on every view to setup view functionality

  alias Rumbl.Accounts

  # gets called 
  # pass in User obj, extract name, parse by " ", get first name
  def first_name(%Accounts.User{name: name}) do
    name
    |> String.split(" ")
    |> Enum.at(0)
  end

  
end