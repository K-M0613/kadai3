class UsersController < ApplicationController
  def index
  end
  
  def show
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to users_path(user.id)
  end
  
  private
  def user_params
    params.require(:user).permit(:name, :introduction)
  end
end
