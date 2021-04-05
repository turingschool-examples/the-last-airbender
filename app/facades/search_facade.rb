require 'ostruct'

class SearchFacade

  def self.get_nation_member_data(nation, result_count = 2000)
    members = SearchService.get_nation_member_data(nation)
    o_members = members.first(result_count).map do |member|
      create_member(member)
    end
    o_members
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
