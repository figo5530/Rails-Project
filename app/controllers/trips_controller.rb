class TripsController < ApplicationController
    layout "layout"
    before_action :require_logged_in

    def index
        if params[:traveler_first_name]
            @trips = Trip.trip_search(params[:traveler_first_name])
            @user = User.find(params[:user_id])
        elsif params[:user_id]
            @user = User.find(params[:user_id])
            @trips = User.find(params[:user_id]).trips
        else
            @trips = Trip.all
        end
    end
    
    def new
        #
        if params[:flight_id]
            @flight = Flight.find_by(params[:flight_id])
            @trip = @flight.trips.build
        else
            
        end
    end

    def show
        #
        @user = User.find(params[:user_id])
        @trip = Trip.find_by(id: params[:id])
      end

    def create
        #
        @trip = Trip.new(trip_params)
        @trip.user = current_user
        @trip.flight_id = params[:flight_id]
        if @trip.save
            redirect_to user_trip_path(current_user, @trip)
        else
            @errors = @trip.errors.full_messages
            @flight = @trip.flight
            render :new
        end
    end

    def edit
        if params[:user_id]
            @user = User.find_by(id: params[:user_id])
            @trip = @user.trips.find_by(id: params[:id])
        else
            @trip = Trip.find_by(id: params[:id])
        end
    end

    def update
        @trip = Trip.find_by(id: params[:id])
        if @trip.update(trip_params)
            redirect_to user_trip_path(current_user, @trip)
        else
            @errors = @trip.errors.full_messages
            @user = current_user
            render :edit
        end
    end

    def destroy
        @user = User.find_by(id: params[:user_id])
        @trip = Trip.find_by(id: params[:id])
        @trip.delete
        redirect_to user_trips_path
    end

    private
    def trip_params
        params.require(:trip).permit(:traveler_first_name, :traveler_last_name, :traveler_gender, :traveler_contact_info, :seat, :user_id, :flight_id)
    end
end
