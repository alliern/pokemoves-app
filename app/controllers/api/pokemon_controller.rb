class Api::PokemonController < ApplicationController
  # before_action :authenticate_admin, except: [:index, :show ]

  def destroy
    @pokemon = Pokemon.find_by(id: params[:id])
    @pokemon.delete
    render json: {message: "successfully deleted"}
  end

end
