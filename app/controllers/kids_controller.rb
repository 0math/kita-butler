class KidsController < ApplicationController


  def new
    @kid = current_user.kids.new
    authorize @kid
  end

  def create
    @kid = current_user.kids.new(kid_params)

    authorize @kid
    if @kid.save
      redirect_to dashboard_path
    end

    if params[:kid][:kindergarden_id]
      Reservation.create(kid: @kid, kindergarden: Kindergarden.find(params[:kid][:kindergarden_id]), status: "Pending", created_at: Time.now)
    end
  end

  def destroy
    authorize @kid
    @kid.delete
    redirect_to root_path
  end

  private

  def kid_params
    params.require(:kid).permit(:first_name, :last_name, :date_of_birth, :primary_language, :secondary_language)
  end

  def set_kid
    @kid = Kid.find(params[:id])
  end

end
