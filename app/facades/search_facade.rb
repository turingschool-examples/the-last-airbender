require 'ostruct'

class SearchFacade

  def self.get_nation_member_data(nation, result_count = 2000)
    search_name = nation_name(nation)
    url = "https://last-airbender-api.herokuapp.com/api/v1/characters?affiliation=#{search_name[0]}+#{search_name[1]}&perPage=200&page=1"
    response = Faraday.get(url)
    members = JSON.parse(response.body, symbolize_names: true)
    o_members = members.first(result_count).map do |member|
      create_member(member)
    end
    o_members
  end

  def self.nation_name(nation)
    nation.titleize.split
  end

  def self.create_member(member)
      OpenStruct.new({
        id: member[:_id],
        name: member[:name],
        allies: member[:allies],
        enemies: member[:enemies],
        affiliation: member[:affiliation] })
  end
end
