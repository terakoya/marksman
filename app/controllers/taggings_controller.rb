class TaggingsController < ApplicationController
  def create
    tags = params[:tag_names].split(',')
    tag_ids = tags.map do |tag_name|
      tag = Tag.new
      tag.name = tag_name
      tag.save
      tag.id
    end
    
    tag_ids.each do |tag_id|
      tagging = Tagging.new(tagging_params)
      tagging.tag_id = tag_id
      tagging.save
    end

    redirect_to root_path
  end

  private 
  def tagging_params 
    params.require(:tagging).permit(:article_id)
  end
end
