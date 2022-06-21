class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @new_book = Book.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def index
    @users = User.all
    @new_book = Book.new
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    if user.save
      flash[:notice] = "You have updated user successfully."
      redirect_to user_path(user.id)
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :introduction, :image)
  end
end
