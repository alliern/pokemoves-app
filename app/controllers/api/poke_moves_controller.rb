class Api::PokeMovesController < ApplicationController
  # before_action :authenticate_admin, except: [:index, :show]

  def index
    if params[:pokemon]
      same as Pokemon.find_by(name: params[:pokemon])
      @pokemoves = Pokemove.pokemons
    elsif params[:move]
      same as Move.find_by(name: params[:move])
      @pokemoves = Pokemove.moves
    end

    render "index.json.jb"
  end

  def show
    @pokemove = Pokemove.find_by[id: params[:id]]
    remder "show.json.jb"

  def create
    @pokemove = Pokemove.new(
      pokemon_id: params[:pokemon_id],
      move_id: params[:pokemon_id],
    )
    if @pokemove.save
      render json: {message: "successfully created"}
    else 
      render json {error: @pokemove.errors.full_messages}, status: 406
    end
  end

  def update
    @pokemove = Pokemove.find_by(id: params[:id])
    @pokemove.pokemon_id: params[:pokemon_id] || @pokemove.pokemon_id,
    @pokemove.move_id: params[:move_id] || @pokemove.move_id

    if @pokemove.save
      render json: {message: "successfully updated"}
    else
      render json: {error: @pokemove.errors.full_messages), status: 406}
    end
  end

  def destroy
    @pokemove = Pokemove.find_by(id: params[:id])
    @pokemove.delete
    render json: {message: "successfully deleted"}
  end
end

