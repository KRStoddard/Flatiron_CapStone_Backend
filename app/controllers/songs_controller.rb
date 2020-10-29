class SongsController < ApplicationController

    def create
        song = Song.create(song_params(:name, :artist, :album, :release_year))
        addition = PlaylistAddition.new(song_params(:playlist_id))
        addition.update({song_id: song.id})
        render json: song
    end

   

    private

    def song_params(*args)
        params.require(:song).permit(*args)
    end
end

  