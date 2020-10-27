class VenuesController < ApplicationController

    def show
    end

    def create
        venue = Venue.create(venue_params(:name, :email, :address, :password))
        render json: venue
    end

    def delete
    end

    private

    def venue_params(*args)
        params.require(:venue).permit(*args)
    end
end