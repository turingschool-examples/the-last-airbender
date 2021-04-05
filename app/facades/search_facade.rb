class SearchFacade
  def self.search(affiliation)
    response = conn.get("/api/v1/characters?affiliation=Fire+Nation")
    result = JSON.parse(response.body)
    @members = result

    found_member = @members.find do |member|
      member["affiliation"] == affiliation
    end

    Member.new(found_member)
  end

  private

  def conn
    @conn ||= Faraday.new(url:"https://last-airbender-api.herokuapp.com")
  end
end
