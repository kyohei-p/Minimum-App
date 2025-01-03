class UsersController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]

  def create
    @user = User.new(user_params)

    result = Geocoder.search(@user.address).first
    if result
      @user.latitude = result.latitude
      @user.longitude = result.longitude
    end

    if @user.save
      redirect_to(root_path, notice: 'ユーザーを作成しました')
    else
      flash.now[:alert] = 'ユーザーの作成に失敗しました'
      render action: 'new'
    end
  end

  def new
    @user = User.new
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
