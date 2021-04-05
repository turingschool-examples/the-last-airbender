class SearchController < ApplicationController
  def index
    nation = params[:nation]
    nation_clean = nation.gsub("_", "+")
    conn = Faraday.new("https://last-airbender-api.herokuapp.com")
    response = conn.get("/api/v1/characters?affiliation=#{nation_clean}&perPage=25")
    @nation = JSON.parse(response.body, symbolize_names: true)
require "pry"; binding.pry
    # data = JSON.parse(response.body, symbolize_names: true)
    # @person = Person.new(data)
  end
end
