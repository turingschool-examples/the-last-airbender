class NationService
  def self.conn
    # response = Faraday.get("https://last-airbender-api.herokuapp.com/api/v1/characters?perPage=497")
    Faraday.new("https://last-airbender-api.herokuapp.com/api/v1/")
  end

  def self.all_characters
    response = conn.get("characters?perPage=497")
    parser(response)
  end

  def self.parser(response)
    JSON.parse(response.body, symbolize_names: true)
  end

end
