class ShowsController < ApplicationController
    skip_before_action :authorized, only: [:index, :show]

    def index 
        shows = Show.all.filter{|show| show.complete != true}
        render json: shows 
    end
    
    def show
        show = Show.find(params[:id])
        render json: show
    end

    def create
        show = Show.new(show_params(:venue_name, :price_per_request, :playlist_id))
        show.update({band_id: logged_in_user.id, date: DateTime.now.to_date})
        render json: show
    end

    def update
        show = Show.find(params[:id])
        show.update({complete: true})
        data = ActiveModelSerializers::Adapter::Json.new(
            ShowSerializer.new(show)
          ).serializable_hash
          ActionCable.server.broadcast 'shows_channel', data
          head :ok
    end

    def destroy 
        show = Show.find(params[:id])
        show.playlist_additions.each{|add| add.played === false}
    end

    private

    def show_params(*args)
        params.require(:show).permit(*args)
    end
end

 
