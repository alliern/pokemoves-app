class Api::UsersController < ApplicationController
#  before_action :authenticate_user, except: [:create]

  def index
    @users = User.all
    render "index.json.jb"
  end

  def show
    @user = User.find_by(id: params[:id])
    render "show.json.jb"
  end

  def profile
    @user = current_user
    render "show.json.jb"
  end

  
  def create
    user = User.new(
      username: params[:username],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      pokemon_1: params[:pokemon_1],
      pokemon_2: params[:pokemon_2],
      pokemon_3: params[:pokemon_3],
      pokemon_4: params[:pokemon_4],
      pokemon_5: params[:pokemon_5],
      pokemon_6: params[:pokemon_6],
    )
    if user.save
      render json: {message: "User created Successfully"}, status: :created
    else
      render json: {errors: users.errors.full_messages}, status: :bad_request
    end
  end

  def update
    @user = current_user
    @user.username = params[:username] || @user.username
    @user.email = params[:email] || @user.email = @user.email
    @user.password = params[:password] || @user.password
    # @user.password_confirmation = params[:password_confirmation] || @user.password_confirmation
    @user.pokemon_1 = params[:pokemon_1] || @user.pokemon_1
    @user.pokemon_2 = params[:pokemon_2] || @user.pokemon_2
    @user.pokemon_3 = params[:pokemon_3] || @user.pokemon_3
    @user.pokemon_4 = params[:pokemon_4] || @user.pokemon_4
    @user.pokemon_5 = params[:pokemon_5] || @user.pokemon_5
    @user.pokemon_6 = params[:pokemon_6] || @user.pokemon_6
    if @user.save
      render json: {message: "update successful"}
    else
      render json: {errors: @user.errors.full_messages}, status: :bad_request
    end
  end

  def destroy
    user = current_user
    user.delete
    render json: {message: "successfully deleted"}
  end


end
