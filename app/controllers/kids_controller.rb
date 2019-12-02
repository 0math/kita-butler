class KidsController < ApplicationController
  def new
    @kid = current_user.kids.new
    authorize @kid
  end

  def create
    @kid = current_user.kids.new(kid_params)
    # @kindergarden = Kindergarden.find(params[:kid][:kindergarden_id])
    authorize @kid
    if @kid.save
      flash[:notice] = 'A new kid has been added to your profile successfully!'
      # after changing the kids profile and reservation create logic this will become "Your kid has been successfully added"
      # redirecting to your profile with the list of current_user.kids
      redirect_to edit_user_registration_path(current_user)
    else
      flash[:alert] = 'Something went wrong, please try again!'
      redirect_to new_kid_path(@kid)
    end
    # if params[:kid][:kindergarden_id]
    #   Reservation.create(kid: @kid, kindergarden: @kindergarden, status: "Pending", created_at: Time.now)
    # end
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
