defmodule RumblWeb.UserController do
  use RumblWeb, :controller

  alias Rumbl.Accounts

  def index(conn, _params) do
    # goes to views/user_view.ex
    users = Accounts.list_users()
    # goes to templates/user/index.html.eex
    render(conn, "index.html", users: users) 
  end

  # note that the 2nd arg is essentially parsing from _params
  def show(conn, %{"id" => id}) do
    user = Accounts.get_user(id)
    render(conn, "show.html", user: user)
  end

end