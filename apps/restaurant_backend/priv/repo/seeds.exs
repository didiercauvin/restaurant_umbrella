alias RestaurantBackend.{Repo, Restaurant, User}

restaurants = [
    %Restaurant{name: "resto 1"},
    %Restaurant{name: "resto 2"},
    %Restaurant{name: "resto 3"}
]

Enum.each(restaurants, fn restaurant -> Repo.insert(restaurant) end)

users = [
    %User{name: "Didier"},
    %User{name: "Ludovic"}
]

Enum.each(users, fn user -> Repo.insert(user) end)