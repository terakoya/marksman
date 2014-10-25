class CommentsController < ApplicationController

  def create
    comment = Comment.new(comment_params)
    if comment.save
      redirect_to article_path(comment.article)
    end
  end

  def destroy
    comment = Comment.find(params[:id])
    if comment.destroy
      redirect_to article_path(comment.article)
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:article_id, :body)
  end

end
