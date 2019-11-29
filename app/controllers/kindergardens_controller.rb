class KindergardensController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_kindergarden, only: [:show]

  def index
    @kindergardens = policy_scope(Kindergarden).geocoded
    if params[:query].present?
      sql_query = "name ILIKE :query OR address ILIKE :query OR language ILIKE :query"
        @kindergardens = @kindergardens.where(sql_query, query: "%#{params[:query]}%")
      if @kindergardens.exists?
       return @kindergardens
        if params[:opening_hours] || params[:closing_hours] || params[:size] || params[:age_structure] || params[:edu_system] || params[:aesthetic_edu].present?

          sql_query2 = "kindergarden.opening_hours @@ :opening_hours\
                        kindergarden.closing_hours @@ :closing_hours\
                        kindergarden.size @@ :size\
                        kindergarden.age_structure @@ :age_structure\
                        kindergarden.edu_system @@ :edu_system\
                        kindergarden.aesthetic_edu @@ :aesthetic_edu"

          @kindergardens = @kindergardens.where(sql_query2, opening_hours: "%#{params[:opening_hours]}%",
                                                            closing_hours: "%#{params[:closing_hours]}%",
                                                            size: "%#{params[:size]}%",
                                                            age_structure: "%#{params[:age_structure]}%",
                                                            edu_system: "%#{params[:edu_system]}%",
                                                            aesthetic_edu: "%#{params[:aesthetic_edu]}%")

        end
      else

        redirect_to root_path(message: "Sorry no KiTa matches your search")
      end
    end
    @markers = @kindergardens.map do |kindergarden|
      {
        lat: kindergarden.latitude,
        lng: kindergarden.longitude
      }
    end
  end

  def show
    if current_user
      @my_reservation = current_user.reservations.where(kindergarden_id: @kindergarden.id, status: 'Accepted').first
      @favourite = current_user.favourites.where(kindergarden_id: @kindergarden.id).first
      @review = Review.new
    end
    @kid = Kid.new
    @reservation = Reservation.new
    @markers = [{ lat: @kindergarden.latitude, lng: @kindergarden.longitude }]
  end

  private

  def kindergarden_params
    params.require(:kindergarden).permit(:name, :address, :language, :capacity, :photo, :email, :phone, :is_available,
      :opening_hours, :closing_hours, :size, :age_structure, :edu_system, :aesthetic_edu)
  end

  def set_kindergarden
    @kindergarden = Kindergarden.find(params[:id])
    authorize @kindergarden
  end
end
