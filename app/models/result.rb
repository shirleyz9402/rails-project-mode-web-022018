class Result < ApplicationRecord
  belongs_to :user
  belongs_to :creature
  belongs_to :location

  def self.top_ten
    Result.joins(:creature).order("creatures.size desc").limit(10)
  end
end
