require 'ostruct'

class SearchController < ApplicationController
  def index
    @nation = params[:nation].titleize
    @nation_members = SearchFacade.get_nation_member_data(params[:nation], 25)
    @total_members = SearchFacade.get_nation_member_data(params[:nation]).count
  end
end
