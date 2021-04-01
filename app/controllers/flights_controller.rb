class FlightsController < ApplicationController
    layout "layout"
    before_action :set_flight, except: [:index, :new, :create]
    
    def index
        if params[:flight_number]
            @flights = Flight.number_search(params[:flight_number])
        else
            @flights = Flight.all
        end
    end

    def show
    end

    private
    def set_flight
        @flight = Flight.find_by(id: params[:id])
    end
end
