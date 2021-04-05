class MemberFacade

  def self.find_members(nation)
    MemberService.get_endpoints(nation)
  end

  def self.get_objects(all_members)
    all_members.map do |input|
    OpenStruct.new({name: input[:name],
                   photo: input[:photoUrl],
                   allies: input[:allies],
                   enemies: input[:enemies],
                   affiliation: input[:affiliation]
                   })
    end
  end
end
