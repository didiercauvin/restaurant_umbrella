defmodule RestaurantBackend.User do
    
    use RestaurantBackend.Model

    schema "users" do
        field :name, :string
    end

    def changeset(user, params \\ %{}) do
        user
        |> cast(params, [:name])
        |> validate_required([:name])
    end

end