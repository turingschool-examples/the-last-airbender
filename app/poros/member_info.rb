class MemberInfo

  attr_reader :name,
              :description,
              :direction,
              :hours

  def initialize(data)
    @name = data[:name]
    @photoUrl = data[:photoUrl]
    @allies = data[:allies]
    @enemies = data[:enemies]
    @affiliation = data[:affiliation]
  end
end
