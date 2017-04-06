defmodule RestaurantBackend.Restaurant do
    use Ecto.Schema

    schema "restaurants" do
        field :name, :string
    end

    def changeset(restaurant, params \\ %{}) do
        restaurant
            |> Ecto.Changeset.cast(params, [:name])
            |> Ecto.Changeset.validate_required([:name])
    end
end