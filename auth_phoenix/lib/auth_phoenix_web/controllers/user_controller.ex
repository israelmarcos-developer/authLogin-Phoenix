defmodule AuthPhoenixWeb.UserController do
  use AuthPhoenixWeb, :controller

  alias AuthPhoenix.Accounts
  alias AuthPhoenix.Accounts.User

  action_fallback AuthPhoenixWeb.FallbackController

  @spec register(any, map) :: any
  def register(conn, %{"user" => user_params}) do
    with {:ok, user} <- Accounts.create_user(user_params) do
      conn
      |> put_status(:created)
      |> text("User sucessfully registered with email:" <> " " <> user.email)
    end
  end
end
