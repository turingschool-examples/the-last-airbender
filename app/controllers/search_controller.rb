class SearchController < ApplicationController
  def index
    @nation = params[:nation].titleize
    @nation_members = get_nation_member_data
  end

  private

  def get_nation_member_data
  end
end
