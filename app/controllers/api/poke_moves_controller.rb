class Api::PokeMovesController < ApplicationController
  # before_action :authenticate_admin, except: [:index, :show]

  def index
    @pokemoves = PokeMove.all
    # if params[:pokemon]
    #   same as Pokemon.find_by(name: params[:pokemon])
    #   @pokemoves = PokeMove.pokemons
    # elsif params[:move]
    #   same as Move.find_by(name: params[:move])
    #   @pokemoves = PokeMove.moves
    # end

    render "index.json.jb"
  end

  def show
    @pokemove = PokeMove.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @pokemove = PokeMove.new(
      pokemon_id: params[:pokemon_id],
      move_id: params[:move_id],
      hm_tm: params[:hm_tm],
      leveling: params[:leveling],
    )
    if @pokemove.save
      render json: {message: "successfully created"}
    else 
      render json: {error: @pokemove.errors.full_messages}, status: 406
    end
  end

  def update
    @pokemove = PokeMove.find_by(id: params[:id])

    @pokemove.pokemon_id = params[:pokemon_id] || @pokemove.pokemon_id,
    @pokemove.move_id = params[:move_id] || @pokemove.move_id,
    @pokemove.hm_tm = params[:hm_tm] || @pokemove.hm_tm,
    @pokemove.leveling = params[:leveling] || @pokemove.leveling,

    if @pokemove.save
      render json: {message: "successfully updated"}
    else
      render json: {error: @pokemove.errors.full_messages}, status: 406
    end
  end

  def destroy
    @pokemove = PokeMove.find_by(id: params[:id])
    @pokemove.delete
    render json: {message: "successfully deleted"}
  end
end

