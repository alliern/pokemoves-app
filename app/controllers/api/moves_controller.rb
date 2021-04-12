class Api::MovesController < ApplicationController
  # before_action :authenticate_admin, except: [:index, :show ]

  def index
  
   
  end

  def show
  
  end
  
  def create
    @move = Move.new(
    name: params[:name],
    type: params[:type],
    category: params[:category],
    hm_tm: params[:hm_tm],
    leveling: params[:leveling],
    category: params[:category]
    )
    if @move.save
      render "show.json.jb"
    else
      render json: {errors: @move.errors.full_messages}, status: 407
    end
  end

  def update
    @move = Move.find_by(name: params[:name])
    @move.name = params[:name] || @move.name,
    @move.type = params[:type] || @move.type,
    @move.hm_tm = params[:hm_tm] || @move.hm_tm,
    @move.leveling = params[:leveling] || @move.leveling,
    @move.category = params[:category] || @move.category
    if @move.save
      render json: {message: "successfully updated"}
    else
      render json: {error: @move.errors.full_messages}
    end
  end

  def destroy
    move = Move.find_by(id: params[:id])
    move.delete
    render json: {message: "successfully deleted"}
  end
end
