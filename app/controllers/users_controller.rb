class UsersController < ApplicationController

  def index
      @users = User.all
  end

  def show
      @user = User.find(params[:id])
      @profiles = Profile.find(params[:id])
      @profile_sex = Sex.find(@profiles.sex_id)
      @articles = current_user.articles.page(params[:page]).per(5)
      @favorites = Favorite.where("user_id = ?", @user)
     
      

     
  end

  def favorites
      @user = User.find(params[:id])
  end
  def following
      @user  = User.find(params[:id])
      @users = @user.followings
      render 'show_follow'
  end

  def followers
    @user  = User.find(params[:id])
    @users = @user.followers
    render 'show_follower'
  end
  
  
end
