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

    def show
        if params[:user_id]
            @user = User.find_by(id: params[:user_id])
            @team = @user.teams.find_by(id: params[:id])
            if @team.nil?
                redirect_to user_teams_path(@user), alert: "Team not found"
            end
        else
            @team = Team.find(params[:id])
        end
      end

    def create
        if params[:user_id]
            @user = User.find_by(id: params[:user_id])
            @team = @user.teams.new(team_params)
            if @team.save
                redirect_to user_teams_path
            else
                render :new
            end
        else
           redirect_to '/'
        end
        
    end

    private
    def team_params
        params.require(:team).permit(:name, :user_id)
    end
end
