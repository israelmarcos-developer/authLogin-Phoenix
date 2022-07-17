defmodule AuthPhoenixWeb.UserView do
  use AuthPhoenixWeb, :view
  alias AuthPhoenixWeb.UserView

  def render("index.json", %{users: users}) do
    %{data: render_many(users, UserView, "user.json")}
  end

  def render("show.json", %{user: user}) do
    %{data: render_one(user, UserView, "user.json")}
  end

  def render("user.json", %{user: user}) do
    %{
      id: user.id,
      firt_name: user.firt_name,
      last_name: user.last_name,
      email: user.email,
      password: user.password
    }
  end
end
