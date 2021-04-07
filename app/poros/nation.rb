class Nation
  attr_reader :name,
              :photo,
              :allies,
              :enemies,
              :affiliations

  def initialize(nation_info)
    @name = nation_info[:name]
    @photo = nation_info[:photoUrl]
    @allies = nation_info[:allies]
    @enemies = nation_info[:enemies]
    @affiliations = nation_info[:affiliation]
  end
end
