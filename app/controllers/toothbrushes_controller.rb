class ToothbrushesController < ApplicationController
  def edit
    @toothbrush = Toothbrush.find(params[:id])
  end

  def update
    @toothbrush = Toothbrush.find(params[:id])
    @toothbrush.update(toothbrush_params)
  end
end
