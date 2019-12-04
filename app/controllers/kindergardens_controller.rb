class KindergardensController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_kindergarden, only: [:show]

  def index
    @kindergardens = policy_scope(Kindergarden).geocoded
    if params[:query].present?

      @kindergardens = @kindergardens.search_by_name_and_address_and_language(params[:query])
      if @kindergardens.empty?
        flash[:alert] = "Sorry no KiTa matches your search."
        redirect_to(root_path)
      else
        @kindergardens = filter_results(@kindergardens)
        @markers = show_markers(@kindergardens)
        session[:search_results] = request.url
          if @kindergardens.empty?
            flash[:alert] = "Sorry no KiTa matches your search."
            redirect_to(root_path)
          end
      end
    elsif params[:query].blank?
      @kindergardens = filter_results(@kindergardens)
      @markers = show_markers(@kindergardens)
      session[:search_results] = request.url
    else
      flash[:alert] = "Sorry no KiTa matches your search."
      redirect_to(root_path)
    end
  end

  def show
    if current_user
      @all_reservations = current_user.reservations.where(kindergarden_id: @kindergarden.id)
      @my_reservation = current_user.reservations.where(kindergarden_id: @kindergarden.id, status: 'Accepted').first
      @declined_reservations = current_user.reservations.where(kindergarden_id: @kindergarden.id, status: 'Declined')
      @favourite = current_user.favourites.where(kindergarden_id: @kindergarden.id).first
      @review = Review.new
      @has_kid_in_kita = Reservation.where(kindergarden_id: @kindergarden.id).last.kid.user == current_user
    end
    @kid = Kid.new
    @reservation = Reservation.new
    @markers = [{ lat: @kindergarden.latitude, lng: @kindergarden.longitude, infoWindow: render_to_string(partial: "info_window", locals: { kindergarden: @kindergarden }) }]
  end

  def filter_results(kindergardens)
    if params[:opening_hours].present?
      @kindergardens = kindergardens.where(opening_hours: params[:opening_hours])
    end

    if params[:closing_hours].present?
      @kindergardens = kindergardens.where(closing_hours: params[:closing_hours])
    end

    if params[:size].present?
      @kindergardens = kindergardens.where(size: params[:size])
    end

    if params[:age_structure].present?
      @kindergardens = kindergardens.where(age_structure: params[:age_structure])
    end

    if params[:edu_system].present?
      @kindergardens = kindergardens.where(edu_system: params[:edu_system])
    end

    if params[:aesthetic_edu].present?
      @kindergardens = kindergardens.where(aesthetic_edu: params[:aesthetic_edu])
    end
    @kindergardens
  end

  private

  def show_markers(kindergardens)
    @markers = kindergardens.map do |kindergarden|
      {
        lat: kindergarden.latitude,
        lng: kindergarden.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { kindergarden: kindergarden })
      }
    end
  end

  def kindergarden_params
    params.require(:kindergarden).permit(:name, :address, :language, :capacity, :photo, :email, :phone, :is_available,
      :opening_hours, :closing_hours, :size, :age_structure, :edu_system, :aesthetic_edu)
  end

  def set_kindergarden
    @kindergarden = Kindergarden.find(params[:id])
    authorize @kindergarden
  end
end
