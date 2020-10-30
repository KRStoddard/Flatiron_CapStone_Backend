class RequestSerializer < ActiveModel::Serializer
  attributes :id, :song, :playlist_id, :show_id

end
