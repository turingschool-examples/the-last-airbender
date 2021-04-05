class AirBenderService
  def self.get_data(endpoint)
    response = Faraday.get(endpoint)
    member_data_body = response.body
    parsed_member_data = JSON.parse(member_data_body, symbolize_names: true)
  end

  def self.members_by_nation(nation)
    page_number = 1
    formatted_nation = nation.titleize.gsub(" ", "+")
    members_by_nation_endpoint = "https://last-airbender-api.herokuapp.com/api/v1/characters?affiliation=#{formatted_nation}&page=#{page_number}"
    data = get_data(members_by_nation_endpoint)
    @members = []
    until data.any? do
      page_number += 1
      require "pry"; binding.pry
      create_members(data)
    end
  end

  def self.create_members(member_data)
    member_data.each do |info|
      @members << Member.new(info)
    end
    @members
  end
end