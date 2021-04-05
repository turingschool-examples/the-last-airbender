class AvatarService

  def self.get_nations_members(id)
    response = conn.get("characters/#{id}")
    json = JSON.parse(@response.body, symbolize_names: true)
  end

  def self.get_nation(nation)
      response = conn.get("characters?affiliation=#{nation.gsub('_', '+')}&perPage=150")
      json = JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    Faraday.new(url: 'https://last-airbender-api.herokuapp.com/api/v1/')
  end
end
