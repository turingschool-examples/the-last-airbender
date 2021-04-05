require 'ostruct'

class SearchController < ApplicationController
  def index
    @nation = params[:nation].titleize
    @nation_members = SearchFacade.get_nation_member_data(params[:nation], 25)
    @total_members = SearchFacade.get_nation_member_data(params[:nation]).count
  end

  private

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

  # def nation_name
  #   params[:nation].titleize.split
  # end
end
