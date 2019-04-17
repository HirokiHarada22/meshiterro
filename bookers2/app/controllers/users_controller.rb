class UsersController < ApplicationController

before_action :authenticate_user!

  def show
   @user = User.find(params[:id])
   @book = Book.new
   @books = @user.books.all
  end

  def edit
   @user = User.find(params[:id])
  end

  def index
    @users = User.all
    @book = Book.new
    @user = current_user
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
    redirect_to user_path(@user.id)
    else
    render 'edit'
    end
  end

  def new
    @book = Book.new
  end


  private

  def user_params
  	params.require(:user).permit(:name, :profile, :profile_image)
  end
end
