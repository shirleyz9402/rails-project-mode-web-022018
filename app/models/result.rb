class Result < ApplicationRecord
  belongs_to :user
  belongs_to :creature
  belongs_to :location
end
