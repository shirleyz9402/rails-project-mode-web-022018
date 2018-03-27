class Location < ApplicationRecord
  has_many :decisions
  has_many :edibles
end
