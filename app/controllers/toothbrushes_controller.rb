class ToothbrushesController < ApplicationController
  def index
    @toothbrushes = Toothbrush.all
  end

  def show
    @toothbrush = Toothbrush.find(params[:id])
  end
end
