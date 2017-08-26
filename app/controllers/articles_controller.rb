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

    # @rank = Article.find(Review.group(:rate).order('count(rate) desc').limit(5).pluck(:article_id))
    # @rank = Article.joins(:reviews).includes(:reviews).order("avg(reviews.rate) desc")
  end
  
  def show
    @article = Article.find(params[:id])
    # binding.pry
    # @comment = current_user.comments(article: @article)
     @comment = Comment.new
     @comments = @article.comments.all
     @review = Review.new
     @profiles = Profile.find(params[:id])
     @stars = @article.reviews.average(:rate).to_i
     @my_star = Review.find_by(article_id: @article, user_id: current_user) 
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

  def rank
    
  end

  
















   def article_params
      params.require(:article).permit(:image, :title, :content, :user_id, :interest_list, :address, :latitude, :longitude)
    end
    
end

