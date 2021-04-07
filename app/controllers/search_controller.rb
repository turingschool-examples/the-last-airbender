class SearchController < ApplicationController

  def index
    @total_members = AvatarFacade.total_members(params[:nation])
    @members = AvatarFacade.get_members(params[:nation])
  end
end
