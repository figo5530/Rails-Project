class FlightsController < ApplicationController
    layout "layout"
    before_action :set_flight, only: [:show]
    before_action :require_logged_in
    
    def index
        if params[:from_city]
            @flights = Flight.city_search(params[:from_city])
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
