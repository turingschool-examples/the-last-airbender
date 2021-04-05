class SearchController < ApplicationController
  def index
    nation = params[:nation].split('_')
    response = Faraday.get("https://last-airbender-api.herokuapp.com/api/v1/characters?affiliation=#{params[:nation]}")
    #   r.params[affiliation] = params[:nation]
    # end
    parsed = JSON.parse(response.body, symbolize_names: true)
    binding.pry
  end
end
