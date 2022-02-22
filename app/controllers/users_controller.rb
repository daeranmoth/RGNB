class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save
  end

  def show
    @user = User.find(params[:id])
  end

  # def destroy
  #   @user = User.find(params[:id])
  #   @user.destroy
  # end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
  end

  private

  def user_params
    params.require(:user).permit(:last_name, :first_name, :email, :city, :gender, :age, :phone_number)
  end
end
