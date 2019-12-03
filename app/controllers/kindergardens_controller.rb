class KindergardensController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_kindergarden, only: [:show]

  def index
    @kindergardens = policy_scope(Kindergarden).geocoded
    if params[:query].present?
      return @kindergardens = Kindergarden.search_by_name_and_address_and_language(params[:query])
    end

    @kindergardens = Kindergarden.search_by_name_and_address_and_language(params[:search])

    if params[:opening_hours]
      @kindergardens = @kindergardens.advanced_search(params[:opening_hours])
    end

    if params[:closing_hours]
      @kindergardens = @kindergardens.advanced_search(params[:closing_hours])
    end

    if params[:size]
      @kindergardens = @kindergardens.advanced_search(params[:size])
    end

    if params[:age_structure]
      @kindergardens = @kindergardens.advanced_search(params[:age_structure])
    end

    if params[:edu_system]
      @kindergardens = @kindergardens.advanced_search(params[:edu_system])
    end

    if params[:aesthetic_edu]
      @kindergardens = @kindergardens.advanced_search(params[:aesthetic_edu])
    end



 #    {"search"=>"Berlin",
 # "opening_hours"=>"... Opening hours...",
 # "closing_hours"=>"... Closing hours...",
 # "size"=>"... Size...",
 # "age_structure"=>"Mixed ages",
 # "edu_system"=>"... Educational System...",
 # "aesthetic_edu"=>"... Aesthetic Education..."}



    # @kindergardens = @kindergardens.advanced_search(params[:age_structure]).advanced_search(params[:size])

      # if params[:opening_hours] || params[:closing_hours] || params[:size] || params[:age_structure] || params[:edu_system] || params[:aesthetic_edu]


        # sql_query2 = "kindergardens.opening_hours @@ :opening_hours\
        #                 kindergardens.closing_hours @@ :closing_hours\
        #                 kindergardens.size @@ :size\
        #                 kindergardens.age_structure @@ :age_structure\
        #                 kindergardens.edu_system @@ :edu_system\
        #                kindergardens.aesthetic_edu @@ :aesthetic_edu"

        # @kindergardens = @kindergardens.where(sql_query2, opening_hours: "%#{params[:opening_hours]}%",
        #                                                    closing_hours: "%#{params[:closing_hours]}%",
        #                                                      size: "%#{params[:size]}%",
        #                                                      age_structure: "%#{params[:age_structure]}%",
        #                                                      edu_system: "%#{params[:edu_system]}%",
        #                                                      aesthetic_edu: "%#{params[:aesthetic_edu]}%")




      # if @kindergardens.exists?
      #  return @kindergardens



      #   if (params[:opening_hours] || params[:closing_hours] || params[:size] || params[:age_structure] || params[:edu_system] || params[:aesthetic_edu]).present?

      #     sql_query2 = "kindergardens.opening_hours @@ :opening_hours\
      #                   kindergardens.closing_hours @@ :closing_hours\
      #                   kindergardens.size @@ :size\
      #                   kindergardens.age_structure @@ :age_structure\
      #                   kindergardens.edu_system @@ :edu_system\
      #                   kindergardens.aesthetic_edu @@ :aesthetic_edu"

      #     @kindergardens = @kindergardens.where(sql_query2, opening_hours: "%#{params[:opening_hours]}%",
      #                                                       closing_hours: "%#{params[:closing_hours]}%",
      #                                                       size: "%#{params[:size]}%",
      #                                                       age_structure: "%#{params[:age_structure]}%",
      #                                                       edu_system: "%#{params[:edu_system]}%",
      #                                                       aesthetic_edu: "%#{params[:aesthetic_edu]}%")

      #   end
      # else
      #   redirect_to root_path(message: "Sorry no KiTa matches your search")
      # end
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


