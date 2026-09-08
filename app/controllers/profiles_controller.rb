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
      flash.now[:alert] = "Current password is incorrect."
      render :edit, status: :unprocessable_entity
      return
    end

    if @user.update(
      password: password_params[:password],
      password_confirmation: password_params[:password_confirmation]
    )
      redirect_to profile_path,
                  notice: "Password updated successfully."
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