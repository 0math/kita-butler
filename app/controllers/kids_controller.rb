class KidsController < ApplicationController
  def new
    @kid = current_user.kids.new
    authorize @kid
  end

  def create
    @kid = current_user.kids.new(kid_params)
    @kindergarden = Kindergarden.find(params[:kid][:kindergarden_id])
    authorize @kid
    if @kid.save
      flash[:notice] = 'Your application has been sent successfully!'
      # after changing the kids profile and reservation create logic this will become "Your kid has been successfully added"
      redirect_to dashboard_path
    else
      flash[:alert] = 'Something went wrong, please try again!'
      render 'kindergardens/show'
    end
    if params[:kid][:kindergarden_id]
      Reservation.create(kid: @kid, kindergarden: @kindergarden, status: "Pending", created_at: Time.now)
    end
  end

  # def destroy
  #   authorize @kid
  #   @kid.delete
  #   redirect_to root_path
  # end

  private

  def kid_params
    params.require(:kid).permit(:first_name, :last_name, :date_of_birth, :primary_language, :secondary_language, :gender)
  end

  # def set_kid
  #   @kid = Kid.find(params[:id])
  # end
end
