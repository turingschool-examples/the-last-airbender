class MemberFacade

  def self.find_members(nation)
    MemberService.get_endpoints(nation)
  end

  # def self.get_objects(all_members)
  # all_members[:data].map do |input|
  #   OpenStruct.new({name: input[:name],
  #                  description: input[:description],
  #                  directions: input[:directionsInfo],
  #                  hours: input[:operatingHours][0][:standardHours]
  #                  })
  #   end
  # end
end
