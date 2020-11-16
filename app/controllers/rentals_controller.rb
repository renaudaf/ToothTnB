class RentalsController < ApplicationController
  def new
    @rental = Rental.new
  end

  def create
    @rental = Rental.new(rental_params)
    @tootbrush = Tootbrush.find(params[:toothbrush_id])
    @user = User.find(params[:user_id])
    @rental.user = @user
    @rental.toothbrush = @toothbrush
    @rental.save

    redirect_to toothbrush_path(@toothbrush)
  end

  def index
    @rentals = Rental.all
  end

  def show
    @rental = Rental.find(params[:id])
  end

  private

  def rental_params
    params.require(:tootbrush).permit(:user_id, :toothbrush_id)
  end
end
