class ReviewsController < ApplicationController

  def create
    @kindergarden = Kindergarden.find(params[:kindergarden_id])
    athorize @kindergarden
    # where status = accepted ?
    @condition = Reservation.where("status = ?", 'accepted')
    if @condition
      @review = Review.new(review_params)
      @review.kindergarden = @kindergarden
      authorize @review
      if @review.save
        redirect_to kindergarden_path(@kindergarden)
      else
        render :notice => "Something went wrong. Try again"
      end
    else
      redirect_to kindergarden_path(@kindergarden), :notice => "You have to be accepted to the Kindergarden to leave a review"
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
