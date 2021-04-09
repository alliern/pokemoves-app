class Api::PokemonController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show ]

end
