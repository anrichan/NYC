class ArticlesController < ApplicationController

  # before_action :current_user, only: [:edit, :update,:destroy]
  # ログインしてなきゃ見れないよ。
  # before_action :authenticate_user!
  
  def new
    @article = Article.new

  end
  def create
    @article = Article.new(article_params)
    @article.user_id = current_user.id
   
    if @article.save
      redirect_to articles_path(@article), notice: '記事を投稿しました'
    else
      render 'new'
    end
  end
  def index
    @articles = Article.all
  end
  
  def show
    @article = Article.find(params[:id])
    # binding.pry
    # @comment = current_user.comments(article: @article)
     @comment = Comment.new
     @comments = @article.comments.all
     @review = Review.new
     @profiles = Profile.find(params[:id])
   
    
  end

  def edit
    @article = Article.find(params[:id])
  end
  def update
    @article = Article.find(params[:id])
    @article.update(params.require(:article).permit(:image, :title, :content, :user_id))
    redirect_to articles_path(@article), notice: '記事を変更しました'
  end


  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end

  
















   def article_params
      params.require(:article).permit(:image, :title, :content, :user_id, :interest_list, :address, :latitude, :longitude)
    end
    
end

