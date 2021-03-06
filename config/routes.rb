Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do


    # POKEMON:
    get "/pokemon" => "pokemon#index"
    get "/pokemon/:id" => "pokemon#show"
    post "/pokemon" => "pokemon#create"
    patch "/pokemon/:id" => "pokemon#update"
    delete "/pokemon/:id" => "pokemon#destroy" 


    # MOVES:
    get "/moves" => "moves#index"
    get "/moves/:id" => "moves#show"
    post "/moves" => "moves#create"
    patch "/moves/:id" => "moves#update"
    delete "/moves/:id" => "moves#destroy" 

  
    # POKE_MOVES:
    get "/poke_moves" => "poke_moves#index"
    get "/poke_moves/:id" => "poke_moves#show"
    post "/poke_moves" => "poke_moves#create"
    patch "/poke_moves/:id" => "poke_moves#update"
    delete "/poke_moves/:id" => "poke_moves#destroy" 


    # USERS:
    get "/users" => "users#index"
    get "/users/:id" => "users#show"
    get "/profile" => "users#profile"
    get "users/:id/edit" => "users#edit"
    get "users/new" => "users#new"
    post "/users" => "users#create"
    patch "/users/:id" => "users#update"
    delete "/users/:id" => "users#destroy" 


    # SESSIONS:
    get "sessions/new" => "sessions#new"
    post "/sessions" => "sessions#create"

    patch "/user_pokemon/:id" => "user_pokemon#update"
    get "/user_pokemon/:id" => "user_pokemon#show"
    get "/user_pokemon/" => "user_pokemon#index"
    post "/user_pokemon/" => "user_pokemon#create"
    delete "/user_pokemon/:id" => "user_pokemon#destroy"


  end
end
