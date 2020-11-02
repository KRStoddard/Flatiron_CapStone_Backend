class ShowSerializer < ActiveModel::Serializer
  attributes :id, :venue_name, :price_per_request, :date, :playlist_additions, :complete, :requests

  belongs_to :band
  belongs_to :playlist

  def playlist_additions
    object.playlist.playlist_additions.map{|add| PlaylistAdditionSerializer.new(add)}
  end

  def date 
    if object.date 
      object.date.to_formatted_s(:long)
    end
  end

  def requests
    requests = object.requests.uniq{|req| req.song_id}
    requests.map{|req| RequestSerializer.new(req)}

  end


end
