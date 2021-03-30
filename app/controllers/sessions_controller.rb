class SessionsController < ApplicationController
    def new

    end

    def create
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            @errors = "invalid username or password"
            render :new
        end
    end

    def create_with_fb
        binding.pry
    end

    def destroy
        session.clear
        redirect_to '/'
    end
end 