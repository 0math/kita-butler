class FavouritesController < ApplicationController

  def create
    # @user = current_user.id -- if we chose to link favourites and users tables
    @kid = current_user.kids.first
    # raise
    @kindergarden = Kindergarden.find(params[:kindergarden_id]) # fix find
    @favourite = Favourite.new(kid: @kid, kindergarden: @kindergarden)
    authorize @favourite
    # raise
    @favourite.save
    # remove redirect_to later
    redirect_to dashboard_path
  end

  # private

  # def reservation_params
  #   params.require(:reservation).permit(:created_at, :kid_id, :kindergarden_id)
  # end
end
