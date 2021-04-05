class MemberService

  def self.get_endpoints(nation)
    resp = Faraday.get("https://last-airbender-api.herokuapp.com/api/v1/characters?affiliation=#{nation.gsub('_', '+')}") do |req|
      req.params['perPage'] = 25
  end
    all_members = JSON.parse(resp.body, symbolize_names: true)
    # MemberFacade.get_objects(all_members)
  end
end
