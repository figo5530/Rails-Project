class TeamsController < ApplicationController
    def index
        if params[:user_id]
            @user = User.find(params[:user_id])
            @teams = User.find(params[:user_id]).teams
        else
            @teams = Team.all
        end
    end
    
    def new
        if params[:user_id]
            @user = User.find(params[:user_id])
            @team = @user.teams.new
        else
            @team = Team.new
        end
    end
end
