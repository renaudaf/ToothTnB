class ReviewsController < ApplicationController
  def create
    toothbrush = Toothbrush.find(params[:toothbrush_id])
    review = Review.new(review_params)
    review.user = current_user
    review.toothbrush = toothbrush
    authorize review
    if review.save
      redirect_to toothbrush_path(toothbrush)
    else
      render "toothbrushes/show"
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
