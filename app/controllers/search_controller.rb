class SearchController < ApplicationController

  def index
    require "pry"; binding.pry
    @members = AvatarFacade.total_members(params[:nation])
  end
end
