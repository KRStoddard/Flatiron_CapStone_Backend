class BandsController < ApplicationController
    before_action :authorized, only: [:auto_login]


    def show
    end

    def create
        band = Band.create(band_params(:name, :username, :email, :password))
        if band.valid?
            token = encode_token({band_id: band.id})
            render json: {band: band, token: token}
        else
            render json: {errors: band.errors.full_messages}
        end
    end

    def destroy

    end

    def login
        band = Band.find_by(username: params[:name])
        if band && band.authenticate(params[:password])
            token = encode_token({band_id: band.id})
            render json: {band: band, token: token}
        else
            render json: {error: "Invalid username or password"}
        end
    end

    def auto_login
        render json: logged_in_user
    end

    private

    def band_params(*args)
        params.require(:band).permit(*args)
    end
end

