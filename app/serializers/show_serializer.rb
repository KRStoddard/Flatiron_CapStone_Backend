class ShowSerializer < ActiveModel::Serializer
  attributes :id, :venue_name, :date, :playlist_additions

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

end
