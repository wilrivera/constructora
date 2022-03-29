class SessionsController < ApplicationController
    include SessionsHelper

    def new
    end

    def create
        usuario = Usuario.find_by(email: params[:session][:email], password: params[:session][:password])

        if usuario
            log_in usuario

            redirect_to :root
        else
            flash[:danger] = 'Credenciales no validas.'
            render "sessions/new"
        end
    end

    def destroy
        log_out if logged_in?
        redirect_to :root
    end
end