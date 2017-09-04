class ProfilesController < ApplicationController
  # コントローラーに設定して、ログイン済ユーザーのみにアクセスを許可する
   # before_action :authenticate_user!
   # before_action :current_user, only: [:edit, :update]

  def new
    @profile = Profile.new
    @sex = Sex.new
  end
  def create
    @profile = Profile.new(profile_params)
    
  if @profile.user_id = current_user.id
    @profile.save
      redirect_to profile_path(@profile), notice: 'プロフィールを作成しました'
    else
      render 'new'
    end
  end
  def show
     @profiles = Profile.find(params[:id])
     @profile_sex = Sex.find(@profiles.sex_id)
  end

  def edit
    @profile = Profile.find(params[:id])
  end
  def update
    @profile = Profile.find(params[:id])
    @profile.update(params.require(:profile).permit(:user_name, :self_introduction, :sex_id, :photo, :user_id))
    redirect_to profile_path(@profile), notice: 'プロフィールを変更しました'
  end

 






   private
  def profile_params
    params.require(:profile).permit(:user_name, :self_introduction, :sex_id, :photo, :user_id)
  end
  def set_sex
    @sexes = Sex.all.pluck(:group)
  end
  

end
