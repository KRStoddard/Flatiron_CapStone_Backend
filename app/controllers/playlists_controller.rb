class PlaylistsController < ApplicationController
    
    def index
        playlists = Playlist.all 
        render json: {playlists: playlists, band: logged_in_user}
    end

    def show
        playlist = Playlist.find(params[:id])
        render json: playlist
    end

    def create
    end

    def update
    end

    def delete
    end
end

  
 