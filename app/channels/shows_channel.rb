class ShowsChannel < ApplicationCable::Channel
  def subscribed
    stream_from "shows_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
