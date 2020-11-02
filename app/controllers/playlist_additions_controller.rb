class PlaylistAdditionsController < ApplicationController
    skip_before_action :authorized, only: [:update]

    def update
        addition = PlaylistAddition.find_by({song_id: params[:song_id], playlist_id: params[:playlist_id]})
        addition.update({played: true})
        data = ActiveModelSerializers::Adapter::Json.new(
            PlaylistAdditionSerializer.new(addition)
          ).serializable_hash
          ActionCable.server.broadcast 'playlist_additions_channel', data
          head :ok
    end

    def destroy
        addition = PlaylistAddition.find_by({song_id: params[:song_id], playlist_id: params[:playlist_id]})
        addition.destroy
        render json: addition
    end

end

  
