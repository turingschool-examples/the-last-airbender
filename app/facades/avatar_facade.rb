class AvatarFacade

  def self.get_members(nation)
    AvatarService.get_nation(nation).each do |member|
      MemberInfo.new(member)
    end
  end

  def self.total_members(nation)
    AvatarService.get_nation(nation).map do |member|
      member[:affiliation] == "Fire Nation"
    end.size
  end
end
