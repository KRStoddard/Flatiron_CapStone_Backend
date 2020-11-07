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
        if playlist.valid?
            render json: playlist
        else 
            render json: {errors: playlist.errors.full_messages}
        end
    end

    def update
    end

    def destroy
        playlist = Playlist.find(params[:id])
        playlist.destroy
        render json: playlist
    end
end

  
 