class SearchController < ApplicationController
  def index
    nation = params[:nation].gsub('_', ' ')
    response = Faraday.get("https://last-airbender-api.herokuapp.com/api/v1/characters") do |r|
      r.params[:affiliation] = nation
      r.params[:perPage] = 200
    end
    parsed = JSON.parse(response.body, symbolize_names: true)
  end
end
