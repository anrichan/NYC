class AdminprofilesController < ApplicationController
  before_action :current_admin, only: [:edit, :update]

  def new
    @adminprofile = Adminprofile.new
   
  end
  def create
    @adminprofile = Adminprofile.new(adminprofile_params)
    
    @adminprofile.admin_id = current_admin.id
    if @adminprofile.save
      redirect_to adminprofile_path(@adminprofile), notice: 'プロフィールを作成しました'
    else
      render 'new'
    end
  end
  def show
     @adminprofile = Adminprofile.find(params[:id])
     
  end

  def edit
    @adminprofile = Adminprofile.find(params[:id])
  end
  def update
    @adminprofile = Adminprofile.find(params[:id])
    @adminprofile.update(params.require(:adminprofile).permit(:admin_name, :admin_self_introduction, :like_location, :myphoto, :admin_id))
    redirect_to adminprofile_path(@adminprofile), notice: 'プロフィールを作成しました'
  end

 




   private
  def adminprofile_params
    params.require(:adminprofile).permit(:admin_name, :admin_self_introduction, :like_location, :myphoto, :admin_id)
  end
  



end
