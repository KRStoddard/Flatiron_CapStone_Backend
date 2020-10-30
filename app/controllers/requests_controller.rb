class RequestsController < ApplicationController
    skip_before_action :authorized

    def create
        request = Request.create(request_params(:playlist_id, :song_id, :show_id))
        render json: request
    end

    private 

    def request_params(*args)
        params.require(:request).permit(*args)
    end

end

 