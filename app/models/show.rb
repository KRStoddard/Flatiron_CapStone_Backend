class Show < ApplicationRecord
  belongs_to :band
  belongs_to :venue
  belongs_to :playlist
end
