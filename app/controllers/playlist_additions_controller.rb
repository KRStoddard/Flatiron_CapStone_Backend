class PlaylistAdditionsController < ApplicationController

    def update
        addition = PlaylistAddition.find_by({song_id: params[:song_id], playlist_id: params[:playlist_id]})
        addition.update({played: true})
        render json: addition
    end

    def destroy
        addition = PlaylistAddition.find_by({song_id: params[:song_id], playlist_id: params[:playlist_id]})
        addition.destroy
        render json: addition
    end
end

  
