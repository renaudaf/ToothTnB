class ToothbrushesController < ApplicationController

  def index
    @toothbrushes = Toothbrush.all
  end

  def show
    @toothbrush = Toothbrush.find(params[:id])
  end

  def new
    @toothbrush = Toothbrush.new
  end

  def create
    @toothbrush = Toothbrush.new(toothbrush_params)
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

  private

  def toothbrush_params
    params.require(:toothbrush).permit(:title, :description, :status, :photo)
  end
end
