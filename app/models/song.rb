class Song < ApplicationRecord

    validates :name, :artist, :album, presence: true
end
