class SessionsController < ApplicationController

  def new
    @name = session[:name]
  end

  def create
    if params[:name] && !params[:name].empty?
      session[:name] = params[:name]
      redirect_to '/'
    else
      redirect_to login_path
    end
  end

  def destroy
    session.delete :name
  end

end
