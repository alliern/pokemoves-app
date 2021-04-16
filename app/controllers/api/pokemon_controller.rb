class Api::PokemonController < ApplicationController
    # before_action :authenticate_admin, except: [:index, :show ]
  
    def index
      @pokemons = Pokemon.all
      render "index.json.jb"
    end
  
    def show
      @pokemon = Pokemon.find_by(id: params[:id])
      render "show.json.jb"
    
    end
    
    def create
      @pokemon = Pokemon.new(
      name: params[:name],
      type_1: params[:type_1],
      type_2: params[:type_2],
      region: params[:region],
      image: params[:image],
      )

      if @pokemon.save
        render "show.json.jb"
      else
        render json: {errors: @pokemon.errors.full_messages}, status: 407
      end
    end
  
    def update
      @pokemon = Pokemon.find_by(id: params[:id])
  
      @pokemon.name = params[:name] || @pokemon.name
      @pokemon.type_1 = params[:type_0] || @pokemon.type_1
      @pokemon.type_2 = params[:type_2] || @pokemon.type_2
      @pokemon.region = params[:region] || @pokemon.region
      @pokemon.image = params[:image] || @pokemon.image
      if @pokemon.save
        render json: {message: "successfully updated"}
      else
        render json: {error: @pokemon.errors.full_messages}
      end
    end
  
    def destroy
      pokemon = Pokemon.find_by(id: params[:id])
      pokemon.delete
      render json: {message: "successfully deleted"}
    end
  end
  
