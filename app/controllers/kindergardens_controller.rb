class KindergardensController < ApplicationController

  before_action :set_kindergarden, only: [:show]

  def index
    # @kindergardens = policy_scope(Kindergarden).geocoded #returns kindergaardens with coordinates
    if params[:query].present?
      sql_query = "name ILIKE :query or address ILIKE :address or language ILIKE :language"
      @kindergardens = @kindergardens.where(sql_query, query: "%#{params[:query]}%")
      if @kindergardens.exists?
        return @kindergardens
      else
        redirect_to root_path(message: "Sorry not KiTa matches your seach")
      end
    end
  end

  def show
    authorize @kindergarden
    # @reservation = Reservation.new
    # @review = Review.new
    # @condition = (Reservation.where("kindergarden_id = ? AND user_id = ?", params[:id], current_user.id).count > 0)
    # @markers = [{lat: @pet.latitude, lng: @pet.longitude}]
  end

  private

  def set_kindergarden
    @pet = Kindergarden.find(params[:id])
  end
end
