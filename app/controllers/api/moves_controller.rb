class Api::MovesController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show ]

  def index
    @moves = Move.all
    render "index.json.jb"
  end

  def show
    @move = Move.all.order(:name)
    render "show.json.jb"
  
  end
  
  def create
    @move = Move.new(
    name: params[:name],
    type_0: params[:type_0],
    hm_tm: params[:hm_tm],
    category: params[:category]
    )
    if @move.save
      render "show.json.jb"
    else
      render json: {errors: @move.errors.full_messages}, status: 407
    end
  end

  def update
    move_id = params[:id]
    @move = Move.find_by(id: move_id)

    @move.name = params[:name] || @move.name
    @move.type_0 = params[:type_0] || @move.type_0
    @move.hm_tm = params[:hm_tm] || @move.hm_tm
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
