class PlaylistAdditionsChannel < ApplicationCable::Channel
  def subscribed
    show = Show.find(params[:show])
    stream_for show
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
