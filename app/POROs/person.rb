class Person

  attr_reader :_id, :name, :photoUrl, :allies, :enemies, :affiliation

  def initialize(data)
    @id = data[:_id]
    @name = data[:name].capitalize
    @photoUrl = data[:photoUrl]
    @allies = data[:allies]
    @enemies = data[:enemies]
    @affiliation = data[:affiliation]
  end
end
