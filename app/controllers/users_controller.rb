class UsersController < ApplicationController
  def show
    @nickname = current_user.nickname
    @kakuremis = current_user.syurikens.page(params[:page]).per(5).order("created_at DESC")
    @kakuremis = users.syurikens.page(params[:page]).per(5).order("created_at DESC")
  end
end
