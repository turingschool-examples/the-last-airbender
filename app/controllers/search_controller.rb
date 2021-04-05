class SearchController < ApplicationController
  def index
    @nation = params[:nation].titleize
    @nation_members = get_nation_member_data
  end

  private

  def get_nation_member_data
    url = "https://last-airbender-api.herokuapp.com/api/v1/characters?affiliation=#{nation_name[0]}+#{nation_name[1]}&perPage=200&page=1"
    response = Faraday.get(url)
    members = JSON.parse(response.body, symbolize_names: true)
  end

  def nation_name
    params[:nation].titleize.split
  end
end
