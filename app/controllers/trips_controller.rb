class TripsController < ApplicationController
    layout "layout"
    before_action :require_logged_in
    before_action :set_user_and_trip, only: [:show, :edit, :update, :destroy]

    def index
        @user = User.find(params[:user_id])
        if params[:traveler_first_name]
            @trips = Trip.trip_search(params[:traveler_first_name])
        else params[:user_id]
            @trips = @user.trips
        end
    end
    
    def new
        #
        @flight = Flight.find_by(params[:flight_id])
        @trip = @flight.trips.build
    end

    def show
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
    end

    def update
        if @trip.update(trip_params)
            redirect_to user_trip_path(@user, @trip)
        else
            @errors = @trip.errors.full_messages
            render :edit
        end
    end

    def destroy
        @trip.delete
        redirect_to user_trips_path
    end

    private
    def trip_params
        params.require(:trip).permit(:traveler_first_name, :traveler_last_name, :traveler_gender, :traveler_contact_info, :seat, :user_id, :flight_id)
    end

    def set_user_and_trip
        @user = User.find_by(id: params[:user_id])
        @trip = Trip.find_by(id: params[:id])
    end
end
