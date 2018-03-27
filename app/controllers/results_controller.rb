class ResultsController < ApplicationController

  def index
    @results = Result.top_ten
  end
end
