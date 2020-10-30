class Request < ApplicationRecord
  belongs_to :song
  belongs_to :show
  belongs_to :playlist
end
