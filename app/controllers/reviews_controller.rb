class ReviewsController < ApplicationController
  # before_action :authenticate_user!
  
  def create
    @article = Article.find(params[:article_id])
    @reviews = current_user.reviews.build(article: @article, rate: params[:review][:rate])
    if @reviews.save
      redirect_to @article, notice: "評価しました"
    else
      redirect_to @article, alert: "登録できません"
    end
  end

  def destroy
    @review = current_user.reviews.find_by!(article_id: params[:article_id])
    @review.destroy
    redirect_to @article, notice: "評価を解除しました"
  end
end

