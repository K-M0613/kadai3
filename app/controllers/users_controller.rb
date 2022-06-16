class UsersController < ApplicationController
  def index
    @user = User.all
    @user = current_user
  end

  def show
    @user = User.find(params[:id])
    @user = current_user
    @books = @user.books
    @book = Book.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    if user.update(user_params)
       flash[:success] = "You have updated user successfully."
       redirect_to users_path(user.id)
   end
  end

  private
  def user_params
    params.require(:user).permit(:name, :introduction)
  end
end
