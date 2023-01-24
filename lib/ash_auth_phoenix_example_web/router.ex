defmodule AshAuthPhoenixExampleWeb.Router do
  use AshAuthPhoenixExampleWeb, :router
  use AshAuthentication.Phoenix.Router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, {AshAuthPhoenixExampleWeb.Layouts, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
    plug :load_from_session
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/" do
    pipe_through :browser
    sign_in_route
    sign_out_route AshAuthentication.Phoenix.Controller
    auth_routes_for AshAuthPhoenixExample.Accounts.User, to: AshAuthentication.Phoenix.Controller
  end

  scope "/", AshAuthPhoenixExampleWeb do
    pipe_through :browser

    get "/", PageController, :home
  end

  # Other scopes may use custom stacks.
  # scope "/api", AshAuthPhoenixExampleWeb do
  #   pipe_through :api
  # end

  # Enable LiveDashboard and Swoosh mailbox preview in development
  if Application.compile_env(:ash_auth_phoenix_example, :dev_routes) do
    # If you want to use the LiveDashboard in production, you should put
    # it behind authentication and allow only admins to access it.
    # If your application does not have an admins-only section yet,
    # you can use Plug.BasicAuth to set up some basic authentication
    # as long as you are also using SSL (which you should anyway).
    import Phoenix.LiveDashboard.Router

    scope "/dev" do
      pipe_through :browser

      live_dashboard "/dashboard", metrics: AshAuthPhoenixExampleWeb.Telemetry
      forward "/mailbox", Plug.Swoosh.MailboxPreview
    end
  end
end
