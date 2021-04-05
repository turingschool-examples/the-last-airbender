class NationFacade
  def self.get_nation_info(nation)
    # conn = Faraday.new(url: "https://last-airbender-api.herokuapp.com")
    #
    # response = conn.get("/api/v1/characters?affiliation=#{nation}")
    # json = JSON.parse(response.body, symbolize_names: true)
    json = NationService.get_nation_info(nation)
    @nations = json.map do |nation_info|
      Nation.new(nation_info)
    end
  end
end
