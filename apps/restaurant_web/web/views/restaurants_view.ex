defmodule RestaurantWeb.RestaurantsView do
  use RestaurantWeb.Web, :view

  def render("index.json", %{restaurants: restaurants}) do
    %{data: render_many(restaurants, RestaurantWeb.RestaurantsView, "restaurants.json")}
  end

  def render("show.json", %{restaurants: restaurants}) do
    %{data: render_one(restaurants, RestaurantWeb.RestaurantsView, "restaurants.json")}
  end

  def render("restaurants.json", %{restaurants: restaurants}) do
    %{id: restaurants.id,
      name: restaurants.name}
  end
end
