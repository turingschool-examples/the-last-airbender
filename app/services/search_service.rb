# class SearchService
#   class << self
#     def call_for_a_search(search)
#       nation = params[:nation]
#       @nation_clean = nation.gsub("_", " ")
#       nation_clean = nation.gsub("_", "+")
#       conn = Faraday.new("https://last-airbender-api.herokuapp.com")
#       response = conn.get("/api/v1/characters?affiliation=#{nation_clean}&perPage=25")
#       response_count = conn.get("/api/v1/characters?affiliation=#{nation_clean}&perPage=150")
#       # @nation = JSON.parse(response.body, symbolize_names: true)
#       data = JSON.parse(response.body, symbolize_names: true)
#       @nation_count = JSON.parse(response_count.body, symbolize_names: true)
#       parse_data(reponse)
#     end
#
#     private
#
#     def conn
#       Faraday.new("https://last-airbender-api.herokuapp.com")
#     end
#
#     def parse_data(response)
#       JSON.parse(response.body, symbolize_names: true)
#     end
#   end
# end
