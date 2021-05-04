class UserPokemonController < ApplicationController

  def index 
    @user_pokemons = UserPokemon.all
    render "index.json.jb"
  end

  def show
    @user_pokemon = UserPokemon.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @user_pokemon = UserPokemon.create (
      user_id: current_user.id,
      pokemon_id: params[:pokemon_id],
      pokemon_name: params[:pokemon_name],
    )
  end

  def update
    @user_pokemon = UserPokemon.find_by(id: params[:id])
    @user_pokemon.user_id = current_user.id
    @user_pokemon.pokemon_id = params[:pokemon_id] || @user_pokemon.pokemon_id
    @user_pokemon.pokemon_name = params[:pokemon_name] || @user_pokemon.pokemon_name
  end
  
end
