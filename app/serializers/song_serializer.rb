class SongSerializer < ActiveModel::Serializer
  attributes :id, :title, :album, :artist, :played, :release_year

  def played
    
end
