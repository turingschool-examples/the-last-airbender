class SearchController < ApplicationController

  def index
    @members = MemberFacade.find_members(params[:nation])
    @full_count = MemberFacade.all_members(params[:nation])
  end
end
