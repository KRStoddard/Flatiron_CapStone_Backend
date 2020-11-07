class Show < ApplicationRecord
  belongs_to :band
  belongs_to :playlist
  has_many :requests

  validates :venue_name, :price_per_request, presence: true
  validate :price

  def price
    if self.price_per_request
      if (self.price_per_request != 0) && (self.price_per_request < 1)
        errors.add(:price_per_request, "must be either zero or greater than $1")
      end
    end
  end
end
