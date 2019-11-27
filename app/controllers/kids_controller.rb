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
  end

  private

  def kid_params
    params.require(:kid).permit(:first_name, :last_name, :date_of_birth, :primary_language, :secondary_language)
  end

  def set_kid
    @kid = Kid.find(params[:id])
  end

end
