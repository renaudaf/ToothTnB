class ReviewsController < ApplicationController
  def new
    @toothbrush = toothbrush.find(params[:toothbrush_id])
    @review = Review.new
  end

  def create
    @toothbrush = toothbrush.find(params[:toothbrush_id])
    @review = Review.new(review_params)
    @review.content = @content
    @review.rating = review_params["rating"].to_i
    if @review.save
      redirect_to #should ask where
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
