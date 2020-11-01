class PlaylistAdditionsChannel < ApplicationCable::Channel
  def subscribed
    stream_from "playlist_additions_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
