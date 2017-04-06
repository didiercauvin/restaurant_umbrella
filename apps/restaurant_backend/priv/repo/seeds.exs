alias RestaurantBackend.{Restaurant, Repo}

restaurants = [
    %Restaurant{name: "resto 1"},
    %Restaurant{name: "resto 2"},
    %Restaurant{name: "resto 3"}
]

Enum.each(restaurants, fn restaurant -> Repo.insert(restaurant) end)