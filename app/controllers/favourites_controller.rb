class FavouritesController < ApplicationController

  def create
    @user = current_user
    @kindergarden = Kindergarden.find(params[:kindergarden_id])
    @favourite = Favourite.new(user: @user, kindergarden: @kindergarden)
    authorize @favourite
    @favourite.save
    redirect_to dashboard_path
  end

  # private

  # def reservation_params
  #   params.require(:reservation).permit(:created_at, :kid_id, :kindergarden_id)
  # end
end
