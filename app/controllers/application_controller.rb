class ApplicationController < ActionController::Base
    helper_method :current_user

    def current_user
        @current_user = User.find_by(id: session[:user_id])
    end

    def home_page_if_logged_in
        redirect_to user_path(current_user) if current_user
    end

    def require_logged_in
        redirect_to '/signin' unless current_user
    end
end
