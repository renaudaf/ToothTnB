class RentalsController < ApplicationController
  def new
    @rental = Rental.new
    @toothbrush = Toothbrush.find(params[:toothbrush_id])
  end

  def create
    @rental = Rental.new(rental_params)
    @toothbrush = Toothbrush.find(params[:toothbrush_id])
    @rental.user = current_user
    @rental.toothbrush = @toothbrush
    @rental.status = "Pending"
    if @rental.save!
      redirect_to rental_path(@rental)
    else
      render 'new'
    end
  end

  def index
    @rentals = Rental.all
  end

  def show
    @rental = Rental.find(params[:id])
    @user = User.find(@rental[:user_id])
    @toothbrush = Toothbrush.find(@rental[:toothbrush_id])
  end

  private

  def rental_params
    params.require(:rental).permit(:date)
  end
end
