class ReservationsController < ApplicationController

def new
    @reservation = Reservation.new
  end

  def create
    if @reservation = current_user.kid.reservation(reservation_params)
    flash[:success] = "Your application has been submitted! You will be redirected to your Dashboard."
    redirect_to pages_dashboards
    else
      render :new
    end
  end

 private

  def set_kindergarden
    @kindergarden = Kindergarden.find(params[:kindergarden_id])
  end

  def reservation_params
    params.require(:reservation).permit(:created_at, :kid_id, :kindergarden_id)
  end

end


end
