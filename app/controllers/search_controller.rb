class SearchController < ApplicationController
  def index
    # nation = params[:nation]
    conn = Faraday.get("https://last-airbender-api.herokuapp.com/api/v1/characters?affiliation=fire+nation")

    # conn = Faraday.new(url: "https://last-airbender-api.herokuapp.com")

    # response = conn.get("/api/v1/characters?affiliation=#{nation}")
    json = JSON.parse(conn.body, symbolize_names: true)
    @nations = json
    # require "pry";binding.pry
  end
end
