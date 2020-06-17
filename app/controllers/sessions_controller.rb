class SessionsController < ApplicationController

    def create
        if params[:name] == nil || params[:name] ==""
            redirect_to '/login'
        else
            session[:name] = params[:name]
            redirect_to '/'
        end
    end

    def new

    end

    def destroy
        session.clear[:name]
        redirect_to '/'
    end

end