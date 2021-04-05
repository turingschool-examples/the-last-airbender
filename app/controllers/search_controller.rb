require 'ostruct'

class SearchController < ApplicationController
  def index
    @nation = params[:nation].titleize
    @nation_members = get_nation_member_data.first(25)
    @total_members = get_nation_member_data.count
  end

  private

  def get_nation_member_data
    url = "https://last-airbender-api.herokuapp.com/api/v1/characters?affiliation=#{nation_name[0]}+#{nation_name[1]}&perPage=200&page=1"
    response = Faraday.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def create_members
    get_nation_member_data.each do |member|
      OpenStruct.new({
        id: member[:_id],
        name: member[:name],
        allies: member[:allies],
        enemies: member[:enemies],
        affiliation: member[:affiliation] })
    end
  end

  def nation_name
    params[:nation].titleize.split
  end
end
