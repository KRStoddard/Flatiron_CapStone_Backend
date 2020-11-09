class RequestsController < ApplicationController
    skip_before_action :authorized

    def create
        request = Request.create(request_params(:playlist_id, :song_id, :show_id))
        show = Show.find(request.show_id)
        data = ActiveModelSerializers::Adapter::Json.new(
            RequestSerializer.new(request)
          ).serializable_hash
          RequestsChannel.broadcast_to show, data
          head :ok
    end

    private 

    def request_params(*args)
        params.require(:request).permit(*args)
    end

end

 