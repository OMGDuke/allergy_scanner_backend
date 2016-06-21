class UserProfilesController < ApplicationController
  def index
    render json: UserProfile.find_by(id: params[:id])
  end
end
