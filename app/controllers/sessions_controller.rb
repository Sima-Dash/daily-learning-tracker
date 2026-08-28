class SessionsController < ApplicationController

  def new
  end

  def create

    user = User.find_by(email: params[:email])

    if user&.authenticate(params[:password])

      session[:user_id] = user.id

      flash[:notice] = I18n.t("flash.sessions.login_success") 

      redirect_to learning_entries_path
    
    else

      flash.now[:alert] = I18n.t("flash.sessions.invalid_credentials") 

      render :new, status: :unprocessable_entity

    end
    
  end

  def destroy

    session.delete(:user_id) 

    redirect_to login_path, 
                notice: I18n.t("flash.sessions.logout_success")
    
  end
  
end
