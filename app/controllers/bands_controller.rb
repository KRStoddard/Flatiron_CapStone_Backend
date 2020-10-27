class BandsController < ApplicationController

    def show
    end

    def create
        band = Band.create(band_params(:name, :email, :password))
        if band.valid?
            token = encode_token({band_id: band.id})
            render json: {band: band, token: token}
        else
            render json: {error: "Invalid username or password"}
        end
    end

    def destroy

    end

    def login
        band = Band.find_by(name: params[:name])
        if band && band.authenticate(params[:password])
            token = encode_token({band_id: band.id})
            render json: {band: band, token: token}
        else
            render json: {error: "Invalid username or password"}
        end
    end

    private

    def band_params(*args)
        params.require(:band).permit(*args)
    end
end

