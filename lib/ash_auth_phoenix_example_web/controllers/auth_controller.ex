defmodule AshAuthPhoenixExampleWeb.AuthController do
  use AshAuthPhoenixExampleWeb, :controller
  use AshAuthentication.Phoenix.Controller

  def success(conn, _activity, user, _token) do
    conn
    |> store_in_session(user)
    |> assign(:current_user, user)
    |> redirect(to: Routes.page_path(conn, :home))
  end

  def failure(conn, _activity, _reason) do
    conn
    |> put_status(401)
    |> put_flash(:error, "You couldn't sign in.")
    |> redirect(to: Routes.page_path(conn, :home))
  end

  def sign_out(conn, _params) do
    conn
    |> clear_session()
    |> put_flash(:info, "You have signed out.")
    |> redirect(to: Routes.page_path(conn, :home))
  end
end
