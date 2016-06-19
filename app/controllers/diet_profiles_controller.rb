class DietProfilesController < ApplicationController
  def index
    render json: DietProfile.all
  end
end
