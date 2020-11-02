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
        playlist = Playlist.create(name: params[:name], band_id: logged_in_user.id)
        render json: playlist
    end

    def update
    end

    def delete
    end
end

  
 