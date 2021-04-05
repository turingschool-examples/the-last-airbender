class SearchController < ApplicationController
  def index
    nation = params[:nation]

    response = conn.get("/api/v1/characters?affiliation=Fire+Nation")
    JSON.parse(response.body)
  end

  private

  def conn
    @conn ||= Faraday.new(url:"https://last-airbender-api.herokuapp.com")
  end
end
