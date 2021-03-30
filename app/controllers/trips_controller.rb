class TripsController < ApplicationController
    def index
        if params[:user_id]
            @user = User.find(params[:user_id])
            @trips = User.find(params[:user_id]).trips
        else
            @trips = Trip.all
        end
    end
    
    def new
        # if params[:user_id]
        #     @user = User.find(params[:user_id])
        #     @trip = @user.trips.new
        # else
        #     @trip = Trip.new
        # end
        if params[:flight_id]
            @flight = Flight.find_by(params[:flight_id])
            @trip = @flight.trips.build
        else
            
        end
    end

    def show
        if params[:user_id]
            @user = User.find_by(id: params[:user_id])
            @trip = @user.trips.find_by(id: params[:id])
            if @trip.nil?
                redirect_to user_trips_path(@user), alert: "Trip not found"
            end
        else
            @trip = Trip.find(params[:id])
        end
      end

    def create
        # if params[:user_id]
        #     @user = User.find_by(id: params[:user_id])
        #     @trip = @user.trips.new(trip_params)
        #     if @trip.save
        #         redirect_to user_trips_path
        #     else
        #         render :new
        #     end
        # else
        #    redirect_to '/'
        # end
        binding.pry
        @trip = Trip.create(trip_params)
        @trip.user = current_user
        @trip.flight_id = params[:flight_id]
        @trip.save
        redirect_to trip_path(@trip)
    end

    def edit
        if params[:user_id]
            @user = User.find_by(id: params[:user_id])
            @trip = @user.trips.find_by(id: params[:id])
        else
            @trip = Trip.find_by(id: params[:id])
        end
    end

    private
    def trip_params
        params.require(:trip).permit(:traveler_first_name, :traveler_last_name, :traveler_gender, :traveler_contact_info, :user_id)
    end
end
