class Api::PokeMovesController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

  def index
    @pokemoves = PokeMove.all
  

    render "index.json.jb"
  end

  def show
    @poke_move = PokeMove.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @poke_move = PokeMove.new(
      pokemon_id: params[:pokemon_id],
      move_id: params[:move_id],
      hm_tm: params[:hm_tm],
      leveling: params[:leveling],
      move_name: params[:move_name],
    )
    if @poke_move.save
      render json: {message: "successfully created"}
    else 
      render json: {error: @poke_move.errors.full_messages}, status: 406
    end
  end

  def update
    @poke_move = PokeMove.find_by(id: params[:id])

    @poke_move.pokemon_id = params[:pokemon_id] || @poke_move.pokemon_id
    @poke_move.move_id = params[:move_id] || @poke_move.move_id
    @poke_move.hm_tm = params[:hm_tm] || @poke_move.hm_tm
    @poke_move.leveling = params[:leveling] || @poke_move.leveling
    @poke_move.move_name = params[:move_name] || @poke_move.move_name

    if @poke_move.save
      render json: {message: "successfully updated"}
    else
      render json: {error: @poke_move.errors.full_messages}, status: 406
    end
  end

  def destroy
    @poke_move = PokeMove.find_by(id: params[:id])
    @poke_move.delete
    render json: {message: "successfully deleted"}
  end
end

