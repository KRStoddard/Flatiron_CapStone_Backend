class Playlist < ApplicationRecord
    has_many :playlist_additons
    has_many :songs, through: :playlist_additions
    belongs_to :band
end
