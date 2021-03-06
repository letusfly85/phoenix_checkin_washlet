defmodule PhoenixCheckinWashlet.Router do
  use PhoenixCheckinWashlet.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    #plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", PhoenixCheckinWashlet do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    resources "/washlets", WashletController
  end

  scope "/", PhoenixCheckinWashlet do
    pipe_through :api # Use the default browser stack

    post "/washlets/checkin",  WashletController, :checkin
    post "/washlets/list",     WashletController, :list
    post "/washlets/register", WashletController, :register
  end
  # Other scopes may use custom stacks.
  # scope "/api", PhoenixCheckinWashlet do
  #   pipe_through :api
  # end
end
