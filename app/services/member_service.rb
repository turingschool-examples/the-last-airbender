class MemberService

  def self.get_endpoints(nation)
    resp = Faraday.get("https://last-airbender-api.herokuapp.com/api/v1/characters?") do |req|
    req.params['affiliation'] = nation
  end
    all_members = JSON.parse(resp.body, symbolize_names: true)
    require "pry"; binding.pry
    MemberFacade.get_objects(all_members)
  end
end
