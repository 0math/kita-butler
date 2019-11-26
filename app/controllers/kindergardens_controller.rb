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
        redirect_to root_path(message: "Sorry no Kindergarden matches your search")
      end
    end
  end

  def show

  end

  private

  def kindergarden_params
    params.require(:kindergarden).permit(:name, :address, :language, :capacity, :photo)
  end

  def set_kindergarden
    @kindergarden = Kindergarden.find(params[:id])
    authorize @kindergarden
  end
end
