class UsersController < ApplicationController

  def new
  end

  def create
    user = User.create(user_params)
    redirect_to new_session_path
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end

end
