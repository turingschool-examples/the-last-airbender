class SearchController < ApplicationController
  def index
    # response = Faraday.get("https://last-airbender-api.herokuapp.com/api/v1/characters?affiliation=#{nation}+nation")
    response = Faraday.get("https://last-airbender-api.herokuapp.com/api/v1/characters?perPage=497")

    parsed = JSON.parse(response.body, symbolize_names: true)

    info = parsed.reduce([]) do |memo, character|
      if character[:affiliation]
        memo << character if character[:affiliation].downcase.include?(nation)
      end
      memo
    end

    @members = info
  end

  private

  def nation
    params[:nation].split("_")[0]
  end
end
