class AvatarFacade

  def self.get_members(nation)
    AvatarService.get_nations_members(nation)
  end

  def members_list(nation)
    
  end

  def self.total_members(nation)
    AvatarService.get_nation(nation).map do |member|
      member[:affiliation] == "Fire Nation"
    end.size
  end
end
