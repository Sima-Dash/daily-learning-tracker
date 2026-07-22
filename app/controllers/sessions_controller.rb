class SessionsController < ApplicationController

  def new
  end

  def create

    user = User.find_by(email: params[:email])

    if user&.authenticate(params[:password])

      session[:user_id] = user.id

      flash[:notice] = "Login successful."

      redirect_to learning_entries_path
    
    else

      flash.now[:alert] = "Invalid email or password."

      render :new, status: :unprocessable_entity

    end
    
  end

  def destroy

    session.delete(:user_id)

    flash[:notice] = "Logged out successfully."

    redirect_to login_path
    
  end
  
end
