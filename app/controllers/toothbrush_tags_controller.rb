class ToothbrushTagsController < ApplicationController

  def new
    @toothbrush = Toothbrush.find(params[:toothbrush_id])
    @toothbrush_tag = ToothbrushTag.new
    @tag = Tag.all
    authorize @toothbrush
  end

  def create
    @toothbrush = Toothbrush.find(params[:toothbrush_id])
    tag_ids = params[:toothbrush_tag][:tag]
    authorize @toothbrush

    tag_ids.each do |tag|
      new_tag = ToothbrushTag.new(toothbrush_id: @toothbrush.id, tag_id: tag)
      new_tag.save!
    end

    redirect_to toothbrush_path(@toothbrush)
  end
end
