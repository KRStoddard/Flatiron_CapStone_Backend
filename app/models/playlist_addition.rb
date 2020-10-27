class PlaylistAddition < ApplicationRecord
  belongs_to :playlist
  belongs_to :song
end
