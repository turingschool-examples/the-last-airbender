class MemberFacade

  def self.find_members(nation)
    MemberService.get_endpoints(nation)
  end
end
