class RequestsChannel < ApplicationCable::Channel
  def subscribed
    stream_from "requests_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
