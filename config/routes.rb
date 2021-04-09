Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/pokemon" => "pokemon#index"
    get "/pokemon/:id" => "pokemon#show"
    post "/pokemon" => "pokemon#create"
    patch "/pokemon/:id" => "pokemon#update"
    delete "/pokemon/:id" => "pokemon#destroy" 

    get "/moves" => "moves#index"
    get "/moves/:id" => "moves#show"
    post "/moves" => "moves#create"
    patch "/moves/:id" => "moves#update"
    delete "/moves/:id" => "moves#destroy" 

    get "/poke_moves" => "poke_moves#index"
    get "/poke_moves/:id" => "poke_moves#show"
    # get "poke_moves/:id/edit" => "poke_moves#edit"
    # get "poke_moves/new" => "poke_moves#new"
    post "/poke_moves" => "poke_moves#create"
    patch "/poke_moves/:id" => "poke_moves#update"
    delete "/poke_moves/:id" => "poke_moves#destroy" 

    get "/users" => "users#index"
    get "/users/:id" => "users#show"
    get "users/:id/edit" => "users#edit"
    get "users/new" => "users#new"
    post "/users" => "users#create"
    patch "/users/:id" => "users#update"
    delete "/users/:id" => "users#destroy" 

    get "/sessions" => "sessions#index"
    get "/sessions/:id" => "sessions#show"
    get "sessions/:id/edit" => "sessions#edit"
    get "sessions/new" => "sessions#new"
    post "/sessions" => "sessions#create"
    patch "/sessions/:id" => "sessions#update"
    delete "/sessions/:id" => "sessions#destroy" 



  end
end
