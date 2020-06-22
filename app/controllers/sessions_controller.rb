class SessionsController < ApplicationController

    def create
        session[:name] = params[:name]
        if !params[:name].nil? && !params[:name].empty?
            redirect_to '/'
        else
            redirect_to login_path
        end
    end

    def destroy
        if !session[:name].nil?
            session.delete :name
        end
    end

end
