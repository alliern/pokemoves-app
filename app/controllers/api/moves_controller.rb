class Api::MovesController < ApplicationController

  def index
    response = HTTP.get("https://pokeapi.co/api/v2/move/?limit=60")
      render json: response.parse 
  end

  def show
    response = HTTP.get("https://pokeapi.co/api/v2/move/#{params[:id]}?limit=60")
      render json: response.parse 
  end
  
  def create
    @move = Move.new(
    name: params[:name],
    type: params[:type],
    category: params[:category],
    hm_tm: params[:hm_tm],
    leveling: params[:leveling],
    )
    if @move.save
      render "show.json.jb"
    else
      render json: {errors: @move.errors.full_messages}, status: 407
    end
  end

end
