class SessionsController < ApplicationController
    layout "signinup"
    # layout "layout"
    before_action :home_page_if_logged_in, except: [:destroy]

    def new

    end

    def create
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            @errors = []
            @errors << "invalid username or password"
            render :new
        end
    end

    def create_with_fb
        @user = User.find_or_create_by(username: fb_auth['info']['name']) do |u|
            u.password = 'password'
            u.email = fb_auth['info']['email']
        end
        session[:user_id] = @user.id
        redirect_to user_path(@user)
    end

    def destroy
        session.clear
        redirect_to '/'
    end

    private
    def fb_auth
        request.env['omniauth.auth']
    end
end 