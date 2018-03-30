class Result < ApplicationRecord
  belongs_to :user
  belongs_to :creature
  belongs_to :location

  def self.top_ten
    Result.joins(:creature).order("creatures.size desc").limit(10)
    # Result.joins(:creature).order("(creatures.updated_at - creatures.created_at) asc, creatures.size desc").limit(10)
    # Result.joins(:creature).order("(creatures.updated_at - creatures.created_at) asc").limit(10)
    # Result.joins(:creature).order('(creatures.updated_at - creatures.created_at) asc')


    # Result.find_by_sql("SELECT * FROM results
    #   INNER JOIN creatures ON creatures.id = results.creature_id
    #   ORDER BY (creatures.updated_at - creatures.created_at) ASC
    #   LIMIT 10
    #   ")
  end
end
