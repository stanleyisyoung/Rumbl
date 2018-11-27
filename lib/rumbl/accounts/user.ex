defmodule Rumbl.Accounts.User do
  # initial static struct representing db schema
  # defstruct [:id, :name, :username]

  use Ecto.Schema
  import Ecto.Changeset

  # id, name, username; id is tracked by db
  schema "users" do
    # ea field refers to BOTH db tbl and elixir struct (created by phx)
    field :name, :string
    field :username, :string

    timestamps()
  end
end