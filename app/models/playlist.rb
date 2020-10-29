class Playlist < ApplicationRecord
    has_many :playlist_additions
    has_many :songs, through: :playlist_additions
    belongs_to :band
end
