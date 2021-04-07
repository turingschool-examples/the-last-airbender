class SearchController < ApplicationController
  def index
    nation = params[:nation].gsub('_', ' ')
    # response = Faraday.get("https://last-airbender-api.herokuapp.com/api/v1/characters") do |r|
    #   r.params[:affiliation] = nation
    #   r.params[:perPage] = 200
    # end
    # @parsed = JSON.parse(response.body, symbolize_names: true)
    @parsed = BenderService.all_people_from_nation(nation)
    @people = []

    @parsed[0..24].each do |person|
      @people << {:name => person[:name],
                  :allies => person[:allies],
                  :enemies => person[:enemies],
                  :affiliation => person[:affiliation],
                  :photo => person[:photoUrl]
      }
    end
  end
end
