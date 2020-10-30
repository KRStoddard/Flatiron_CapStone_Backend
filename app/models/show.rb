class Show < ApplicationRecord
  belongs_to :band
  belongs_to :playlist
  has_many :requests
end
