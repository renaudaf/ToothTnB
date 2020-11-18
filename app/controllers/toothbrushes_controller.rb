class ToothbrushesController < ApplicationController
  before_action :authenticate_user!
  skip_before_action :authenticate_user!, only: :index

  def index
    @toothbrushes = Toothbrush.all
    # @toothbrushes = Toothbrush.where.not(latitude: nil, longitude: nil)

    @markers = @toothbrushes.geocoded.map do |toothbrush|
      {
        lat: toothbrush.latitude,
        lng: toothbrush.longitude
      }
    end
  end

  def show
    @toothbrush = Toothbrush.find(params[:id])
    @review = Review.new
  end

  def new
    @toothbrush = Toothbrush.new
  end

  def create
    user = current_user
    @toothbrush = Toothbrush.new(toothbrush_params)
    @toothbrush.user = user
    if @toothbrush.save
      redirect_to toothbrush_path(@toothbrush)
    else
      render 'new'
    end
  end

  def edit
    @toothbrush = Toothbrush.find(params[:id])
  end

  def update
    @toothbrush = Toothbrush.find(params[:id])
    if @toothbrush.update(toothbrush_params)
      redirect_to toothbrush_path(@toothbrush)
    else
      render 'edit'
    end
  end

  def destroy
    @toothbrush = Toothbrush.find(params[:id])
    @toothbrush.destroy

    redirect_to toothbrushes_path
  end

  private

  def toothbrush_params
    params.require(:toothbrush).permit(:title, :description, :status, :photo, :price)
  end
end
