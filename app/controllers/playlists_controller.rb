class PlaylistsController < ApplicationController

    def index
        playlists = Playlist.all 
        render json: playlists
    end

    def show
    end

    def create
    end

    def update
    end

    def delete
    end
end

  
 