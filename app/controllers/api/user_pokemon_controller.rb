class Api::UserPokemonController < ApplicationController
  before_action :authenticate_user

  def index 
    @user_pokemons = UserPokemon.where(user_id: current_user.id)
    render "index.json.jb"
  end

  def show
    @user_pokemon = UserPokemon.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @user_pokemon = UserPokemon.new(
      user_id: current_user.id,
      pokemon_id: params[:pokemon_id],
      pokemon_name: params[:pokemon_name]
    )
    if @user_pokemon.save
      render json: {message: "User Pokemon created Successfully"}, status: :created
    else
      render json: {errors: users.errors.full_messages}, status: :bad_request
    end
  end

  def update
    @user_pokemon = UserPokemon.where(user_id: current_user.id)
    @user_pokemon.user_id = current_user.id
    @user_pokemon.pokemon_id = params[:pokemon_id] || @user_pokemon.pokemon_id
    @user_pokemon.pokemon_name = params[:pokemon_name] || @user_pokemon.pokemon_name
  end

  def destroy
    @user_pokemon = UserPokemon.find_by(id: params[:id])
    @user_pokemon.delete
    render json: {message: "Successfully Deleted"}
  end
  
end
