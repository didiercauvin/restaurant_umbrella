defmodule RestaurantBackend.Restaurant do
    use RestaurantBackend.Model

    schema "restaurants" do
        field :name, :string
    end

    def changeset(restaurant, params \\ %{}) do
        restaurant
            |> cast(params, [:name])
            |> validate_required([:name])
    end
end