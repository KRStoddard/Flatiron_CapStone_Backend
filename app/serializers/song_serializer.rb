class SongSerializer < ActiveModel::Serializer
  attributes :id, :title, :album, :artist, :release_year

end
