class FlightsController < ApplicationController
    before_action :set_flight, except: [:index, :new, :create]
    
    def index
        @flights = Flight.all
    end

    def show
    end

    private
    def set_flight
        @flight = Flight.find_by(id: params[:id])
    end
end
