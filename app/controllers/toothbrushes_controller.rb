class ToothbrushesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @toothbrushes = policy_scope(Toothbrush)
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
    authorize @toothbrush
  end

  def new
    @toothbrush = Toothbrush.new
    authorize @toothbrush
  end

  def create
    user = current_user
    @toothbrush = Toothbrush.new(toothbrush_params)
    authorize @toothbrush
    @toothbrush.user = user
    if @toothbrush.save
      redirect_to toothbrush_path(@toothbrush)
    else
      render 'new'
    end
  end

  def edit
    @toothbrush = Toothbrush.find(params[:id])
    authorize @toothbrush
  end

  def update
    @toothbrush = Toothbrush.find(params[:id])
    authorize @toothbrush
    if @toothbrush.update(toothbrush_params)
      redirect_to toothbrush_path(@toothbrush)
    else
      render 'edit'
    end
  end

  def destroy
    @toothbrush = Toothbrush.find(params[:id])
    authorize @toothbrush
    @toothbrush.destroy
    redirect_to toothbrushes_path
  end

  private

  def toothbrush_params
    params.require(:toothbrush).permit(:title, :description, :status, :photo, :price)
  end
end
