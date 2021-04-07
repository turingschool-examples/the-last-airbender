class SearchController < ApplicationController
  def index
    nation = params[:nation].split("+")

    # conn = Faraday.new(url: "https://last-airbender-api.herokuapp.com")
    #
    # response = conn.get("/api/v1/characters?affiliation=#{nation}")
    # json = JSON.parse(response.body, symbolize_names: true)
    # @nations = json.map do |nation_info|
    #   Nation.new(nation_info)
    # end
    @nations = NationFacade.get_nation_info(nation)
  end
end
