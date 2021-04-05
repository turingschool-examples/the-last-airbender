class SearchController < ApplicationController
  def index
    @nation = params[:nation].titleize
  end
end
