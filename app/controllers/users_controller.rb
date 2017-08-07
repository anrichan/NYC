class UsersController < ApplicationController

  def index
      @users = User.all
  end

  def show
      @user = User.find(params[:id])
      @profiles = Profile.find(params[:id])
      @profile_sex = Sex.find(@profiles.sex_id)
      @articles = current_user.articles
  end

  def favorites
      @user = User.find(params[:id])
  end
  
end
