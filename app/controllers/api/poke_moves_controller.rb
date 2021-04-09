class Api::PokeMovesController < ApplicationController
  # before_action :authenticate_admin, except: [:index, :show]

  def index
    @pokemoves = Pokemove.all
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
      render json {errors: @pokemove.errors.full_messages}, status: 406
    end
  end

  def
end

