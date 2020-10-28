class UsersController < ApplicationController
  def new
  end

  def edit
  end

  private

  def user_params
    params.require(:user).permit(:nickname, :email)
  end
end
