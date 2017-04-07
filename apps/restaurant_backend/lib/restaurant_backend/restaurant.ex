defmodule RestaurantBackend.Restaurant do
    use RestaurantBackend.Model

    schema "restaurants" do
        field :name, :string
    end

    def changeset(restaurant, params \\ %{}) do
        restaurant
            |> Ecto.Changeset.cast(params, [:name])
            |> Ecto.Changeset.validate_required([:name])
    end
end