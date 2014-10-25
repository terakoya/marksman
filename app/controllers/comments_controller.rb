class CommentsController < ApplicationController

  def new
  end

  def edit
  end

  def create
    comment = Comment.new(comment_params())
    if comment.save
      redirect_to article_path(comment.article)
    end
  end

  def update
  end

  def destroy
  end

  private
  def comment_params
    params.require(:comment).permit(:article_id, :body)
  end

end
