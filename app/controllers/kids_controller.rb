class KidsController < ApplicationController
  before_action :set_kid, only: [:edit, :update]

  def new
    @kid = current_user.kids.new
    authorize @kid
  end

  def create
    @kid = current_user.kids.new(kid_params)
    authorize @kid
    if @kid.save
      flash[:notice] = 'A new kid has been added to your profile successfully!'
      redirect_to edit_user_registration_path(current_user)
    else
      flash[:alert] = 'Something went wrong, please try again!'
      redirect_to new_kid_path(@kid)
    end
  end

  # def destroy
  #   authorize @kid
  #   @kid.delete
  #   redirect_to root_path
  # end

  def edit
    authorize @kid
  end

  def update
    authorize @kid
    if @kid.update(kid_params)
      flash[:success] = "Your kid's details has been successfully updated!"
    else
      flash[:alert] = 'Something went wrong, please try again!'
    end
    redirect_to edit_user_registration_path(current_user)
  end

  private

  def kid_params
    params.require(:kid).permit(:first_name, :last_name, :date_of_birth, :primary_language, :secondary_language, :gender)
  end

  def set_kid
    @kid = Kid.find(params[:id])
  end
end
