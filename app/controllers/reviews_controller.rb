class ReviewsController < ApplicationController

  def create
    @reservation = Reservation.find(params[:reservation_id])
    @review = Review.new(review_params)
    @review.reservation = @reservation
    authorize @review
    if @review.save
      redirect_to kindergarden_path(@reservation.kindergarden)
    else
      render :notice => "Something went wrong. Try again"
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
