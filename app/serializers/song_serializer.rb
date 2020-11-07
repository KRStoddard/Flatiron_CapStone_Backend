class SongSerializer < ActiveModel::Serializer
  attributes :id, :name, :album, :artist, :release_year

end
