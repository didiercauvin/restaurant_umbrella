# defmodule RestaurantWeb.UsersView do
#   use RestaurantWeb.Web, :view

#   def render("index.json", %{users: users}) do
#     %{data: render_many(users, RestaurantWeb.UsersView, "users.json")}
#   end

#   def render("show.json", %{users: users}) do
#     %{data: render_one(users, RestaurantWeb.UsersView, "users.json")}
#   end

#   def render("users.json", %{users: users}) do
#     %{id: users.id,
#       name: users.name}
#   end
# end
