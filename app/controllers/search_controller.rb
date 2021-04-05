class SearchController < ApplicationController
  def index
    # response = Faraday.get("https://last-airbender-api.herokuapp.com/api/v1/characters?affiliation=#{nation}+nation")
    response = Faraday.get("https://last-airbender-api.herokuapp.com/api/v1/characters?perPage=10000000")

    parsed = JSON.parse(response.body, symbolize_names: true)
    require "pry"; binding.pry
    @members = nation
  end

  private

  def nation
    params[:nation].split("_")[0]
  end
end
