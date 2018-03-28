class User < ApplicationRecord
  has_secure_password
  has_many :results
  has_many :creatures

  def results_descending
    self.results.joins(:creature).order("creatures.size desc").limit(10)
  end
end
