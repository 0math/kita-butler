class ReservationsController < ApplicationController
  def new
    @reservation = Reservation.new
    @kindergarden = Kindergarden.find(params[:kindergarden_id])
    @kids = Kid.where(user: current_user)
    authorize @reservation
  end

  def create
    @reservation = Reservation.new
    @kid_name = reservation_params
    # this will search for kid's first name only
    @kid = Kid.find_by("first_name" => @kid_name[:kid_id])
    @reservation.kid = @kid
    @reservation.status = "Pending"
    @kindergarden = Kindergarden.find(params[:kindergarden_id])
    @reservation.kindergarden = @kindergarden
    authorize @reservation
    if @reservation.save
      redirect_to dashboard_path
      #raise
    else
      redirect_to new_kindergarden_reservation_path(@kindergarden)
    end

  end

  def update
    @reservation = Reservation.find(params[:id])
    authorize @reservation
    @reservation.update(updated_at: Time.now)
    redirect_to dashboard_path
  end

  private

  # def set_kindergarden
  #   @kindergarden = Kindergarden.find(params[:kindergarden_id])
  # end

  def reservation_params
    params.require(:reservation).permit(:kid_id)
  end
end
