class SesionController < ApplicationController
  def index
    session[:current_user] = nil       
    session.delete(:current_user)
    reset_session
    session[:logout_requested] = true  
    redirect_to root_path
  end
end
