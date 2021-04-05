class SearchController < ApplicationController
  def index
    nation = params["affiliation"]

    response = conn.get("/api/v1/characters?affiliation=Fire+Nation")
    result = JSON.parse(response.body)
    @members = result

    found_member = @members.find do |member|
      member["affiliation"] == nation
    end
  end

  private

  def conn
    @conn ||= Faraday.new(url:"https://last-airbender-api.herokuapp.com")
  end
end
