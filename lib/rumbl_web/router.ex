defmodule RumblWeb.Router do
  use RumblWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", RumblWeb do
    pipe_through :browser

    # goes to controllers/user_controller.ex -> index()
    get "/users", UserController, :index  
    # displaying specific user; goes to cntrl/user_controller.ex -> show()
    get "/users/:id", UserController, :show
    # default route from proj scaffolding
    get "/", PageController, :index
  end
end