class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @new_book = Book.new
    @book = @user.books
  end

  def edit
    @user = User.find(params[:id])
      if @user == current_user
        render :edit
      else
        redirect_to user_path(current_user)
      end
  end

  def index
    @users = User.all
    @new_book = Book.new
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    if @user.save
      flash[:notice] = "You have updated user successfully."
      redirect_to user_path(@user.id)
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end
end
