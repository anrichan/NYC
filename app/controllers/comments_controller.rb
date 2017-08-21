class CommentsController < ApplicationController
  before_action :authenticate_user!
 
  def create
    @article = Article.find(params[:article_id])
    # binding.pry
    # @comment = current_user.comments(article: @article)
    @comment = @article.comments.new(comment_params)
    @comment.user_id = current_user.id
    @comment.user_name = current_user.profile.user_name
    @comment.save
    redirect_to @article
  end

  def destroy
    article = Article.find(params[:article_id])
    @comment = article.comments.find(params[:id])
    @comment.destroy
    redirect_to article_path(article)
  end

  private
    def comment_params
      params.require(:comment).permit(:comment_discription,:comment_title, :user_id, :article_id)
    end

end

