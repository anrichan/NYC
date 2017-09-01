class AdminsController < ApplicationController

def index
end

def show
  @admin = Admin.find(params[:id])
  @adminprofiles = Adminprofile.find(params[:id])

end


end
