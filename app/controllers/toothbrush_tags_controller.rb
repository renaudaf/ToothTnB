class ToothbrushTagsController < ApplicationController

  def new
    @toothbrush = Toothbrush.find(params[:toothbrush_id])
    @toothbrush_tag = ToothbrushTag.new
    authorize @toothbrush
  end

  def create
  end
end
