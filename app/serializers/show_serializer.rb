class ShowSerializer < ActiveModel::Serializer
  attributes :id, :venue_name, :price_per_request, :date, :playlist_additions, :complete

  belongs_to :band
  has_many :requests
  belongs_to :playlist

  def playlist_additions
    object.playlist.playlist_additions.map{|add| PlaylistAdditionSerializer.new(add)}
  end

  def date 
    if object.date 
      object.date.to_formatted_s(:long)
    end
  end

end
