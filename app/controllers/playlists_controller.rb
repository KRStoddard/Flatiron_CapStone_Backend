class PlaylistsController < ApplicationController

    def index
        playlists = Playlist.all 
        render json: {playlists: playlists, band: logged_in_user}
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

  
 