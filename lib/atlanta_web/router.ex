defmodule AtlantaWeb.Router do
  use AtlantaWeb, :router

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

  scope "/", AtlantaWeb do
    pipe_through :browser
    get "/", PageController, :index
  end

  scope "/api/v1", AtlantaWeb do
    pipe_through :api
    put "/apply", TFController, :apply
  end

  # Other scopes may use custom stacks.
  # scope "/api", AtlantaWeb do
  #   pipe_through :api
  # end
end
