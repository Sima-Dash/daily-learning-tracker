class ProfilesController < ApplicationController
  before_action :require_login

  def show
    @user = current_user
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user

    unless @user.authenticate(password_params[:current_password])
      flash.now[:alert] =
        I18n.t("flash.profile.current_password_incorrect")
      render :edit, status: :unprocessable_entity
      return
    end

    if @user.update(
      password: password_params[:password],
      password_confirmation: password_params[:password_confirmation]
    )
      redirect_to profile_path,
                  notice: I18n.t("flash.profile.password_updated")
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def password_params
    params.require(:user).permit(
      :current_password,
      :password,
      :password_confirmation
    )
  end
end