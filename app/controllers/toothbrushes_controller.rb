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
  @toothbrush.save
  end

  def edit
   @toothbrush = Toothbrush.find(params[:id])
  end

  def update
    @toothbrush = Toothbrush.find(params[:id])
    @toothbrush.update(toothbrush_params)
  end

  private

  def toothbrush_params
  params.require(:tootbrush).permit(:title, :description)
  end
end
