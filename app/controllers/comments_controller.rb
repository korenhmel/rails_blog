class CommentsController < ApplicationController

  def create
    @article = Article.find(params[:article_id])
    @c = @article.comments.create(comment_params)
    @c.autor = current_user.username
    # @comments = params[comment: [:user_id]]
    redirect_to article_path(@article)
  end



  private
  def comment_params
    params.require(:comment).permit(:autor, :body)
  end
end
