class PlaylistAdditionSerializer < ActiveModel::Serializer
  attributes :id, :played, :song

  def song
    object.song 
  end
 
end
