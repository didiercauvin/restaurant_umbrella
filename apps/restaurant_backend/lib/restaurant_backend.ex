defmodule RestaurantBackend do
  use RestaurantBackend.Model
  @moduledoc """
  Documentation for RestaurantBackend.
  """

  def restaurants do
    Repo.all(Restaurant)
  end

  def get!(id) do
    Repo.get!(Restaurant, id)
  end
end
