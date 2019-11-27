class KindergardensController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_kindergarden, only: [:show]

  def index
    @kindergardens = policy_scope(Kindergarden)
    if params[:query].present?
      sql_query = "name ILIKE :query or address ILIKE :query or language ILIKE :query"
      @kindergardens = @kindergardens.where(sql_query, query: "%#{params[:query]}%")
      if @kindergardens.exists?
        return @kindergardens
      else
        redirect_to root_path(message: "Sorry no KiTa matches your search")
      end
    end
  end

  def show
    if current_user
      @reservation = current_user.reservations.where(kindergarden_id: @kindergarden.id, status: 'accepted').first
      @review = Review.new
    end
  end

  private

  def kindergarden_params
    params.require(:kindergarden).permit(:name, :address, :language, :capacity, :photo, :email, :phone)
  end

  def set_kindergarden
    @kindergarden = Kindergarden.find(params[:id])
    authorize @kindergarden
  end
end
