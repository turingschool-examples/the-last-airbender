require 'ostruct'

class SearchService
  def self.get_nation_member_data(nation)
    search_name = nation_name(nation)
    url = "https://last-airbender-api.herokuapp.com/api/v1/characters?affiliation=#{search_name[0]}+#{search_name[1]}&perPage=200&page=1"
    response = Faraday.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.nation_name(nation)
    nation.titleize.split
  end
end
