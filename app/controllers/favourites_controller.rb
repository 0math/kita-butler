class FavouritesController < ApplicationController

  def create
    # @user = current_user.id -- if we chose to link favourites and users tables
    @kid = current_user.kids.first
    @kindergarden = Kindergarden.find(params[:kindergarden_id])
    @favourite = Favourite.new(kid: @kid, kindergarden: @kindergarden)
    authorize @favourite
    @favourite.save
    redirect_to dashboard_path
  end

  # private

  # def reservation_params
  #   params.require(:reservation).permit(:created_at, :kid_id, :kindergarden_id)
  # end
end
