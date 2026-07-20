class SessionsController < ApplicationController

  def new
  end

  def create
  end

  def destroy

    session.delete(:user_id)

    flash[:notice] = "Logged out successfully."

    redirect_to login_path
    
  end
  
end
