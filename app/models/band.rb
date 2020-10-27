class Band < ApplicationRecord
    has_secure_password
    has_many :playlists
    has_many :shows
end
