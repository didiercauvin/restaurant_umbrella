defmodule RestaurantWeb.RestaurantsController do
  use RestaurantWeb.Web, :controller

  # use RestaurantBackend

  def index(conn, _params) do
    restaurants = RestaurantBackend.restaurants
    render(conn, "index.json", restaurants: restaurants)
  end

  def show(conn, %{"id" => id}) do
    restaurants = RestaurantBackend.get!(id)
    render(conn, "show.json", restaurants: restaurants)
  end

  # def create(conn, %{"restaurants" => restaurants_params}) do
  #   changeset = Restaurants.changeset(%Restaurants{}, restaurants_params)

  #   case Repo.insert(changeset) do
  #     {:ok, restaurants} ->
  #       conn
  #       |> put_status(:created)
  #       |> put_resp_header("location", restaurants_path(conn, :show, restaurants))
  #       |> render("show.json", restaurants: restaurants)
  #     {:error, changeset} ->
  #       conn
  #       |> put_status(:unprocessable_entity)
  #       |> render(RestaurantWeb.ChangesetView, "error.json", changeset: changeset)
  #   end
  # end

  

  # def update(conn, %{"id" => id, "restaurants" => restaurants_params}) do
  #   restaurants = Repo.get!(Restaurants, id)
  #   changeset = Restaurants.changeset(restaurants, restaurants_params)

  #   case Repo.update(changeset) do
  #     {:ok, restaurants} ->
  #       render(conn, "show.json", restaurants: restaurants)
  #     {:error, changeset} ->
  #       conn
  #       |> put_status(:unprocessable_entity)
  #       |> render(RestaurantWeb.ChangesetView, "error.json", changeset: changeset)
  #   end
  # end

  # def delete(conn, %{"id" => id}) do
  #   restaurants = Repo.get!(Restaurants, id)

  #   # Here we use delete! (with a bang) because we expect
  #   # it to always work (and if it does not, it will raise).
  #   Repo.delete!(restaurants)

  #   send_resp(conn, :no_content, "")
  # end
end
