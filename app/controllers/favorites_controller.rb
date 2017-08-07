class FavoritesController < ApplicationController
  before_action :authenticate_user!
   def create
        @article = Article.find(params[:article_id])
        @favorite = current_user.favorites.build(article: @article)

        if @favorite.save
          redirect_to @article, notice: "お気に入りに登録しました"
        else
          redirect_to @article, alert: "この投稿はお気に入りに登録できません"
        end
    end

    def destroy
        @favorite = current_user.favorites.find_by!(article_id: params[:article_id])
        @favorite.destroy
        redirect_to @article, notice: "お気に入りを解除しました"
    end
end
