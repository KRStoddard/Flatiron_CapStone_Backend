class BandSerializer < ActiveModel::Serializer
  attributes :id, :name, :username
  has_many :shows
  has_many :playlists
end
