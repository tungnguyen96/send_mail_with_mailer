class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create user_params
    UserMailer.signup_confirmation(@user).deliver
    redirect_to root_url
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
