class Member
  def initialize(attributes)
    @name = attributes[:name]
    @photo_url = attributes[:photoUrl]
    @allies = attributes[:allies]
    @enemies = attributes[:enemies]
    @affiliation = attributes[:affiliation]
  end
end