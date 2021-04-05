class SearchController < ApplicationController
  def index
    @members = AirBenderService.members_by_nation(params[:nation])
  end
end