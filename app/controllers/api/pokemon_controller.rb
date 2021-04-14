class Api::PokemonController < ApplicationController
    before_action :authenticate_admin, except: [:index, :show ]
  
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
      type_0: params[:type_0],
      hm_tm: params[:hm_tm],
      category: params[:category]
      )
      if @pokemon.save
        render "show.json.jb"
      else
        render json: {errors: @pokemon.errors.full_messages}, status: 407
      end
    end
  
    def update
      pokemon_id = params[:id]
      @pokemon = Pokemon.find_by(id: pokemon_id)
  
      @pokemon.name = params[:name] || @pokemon.name,
      @pokemon.type_0 = params[:type_0] || @pokemon.type_0,
      @pokemon.hm_tm = params[:hm_tm] || @pokemon.hm_tm,
      @pokemon.category = params[:category] || @pokemon.category
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
  
