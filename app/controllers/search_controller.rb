class SearchController < ApplicationController
  def index
    connection = Faraday.new('https://last-airbender-api.herokuapp.com')
    response = connection.get("/api/v1/characters?affiliation=#{nation_query}&perPage=100&page=1")
    @members = JSON.parse(response.body, symbolize_names: true)
    @nation = params[:nation]
  end

  private

  def nation_parse
    params[:nation].split('_')
  end

  def nation_string
    nation_parse.join(' ').titlecase
  end

  def nation_query
    nation_parse.join('+').titlecase
  end
end
