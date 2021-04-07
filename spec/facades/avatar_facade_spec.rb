require 'rails_helper'

describe AvatarFacade do
  context "instance methods" do
    it "Returns nation and members informations" do
      members = AvatarFacade.get_members("fire_nation")
      @name = members.first[:name]
      @allies =   members.first[:allies]
      @enemies = members.first[:enemies]
      @affiliation = members.first[:affiliation]


      expect(members.class).to eq(Array)
      expect(members.size).to eq(97)
      expect(@name.class).to eq(String)
      expect(@allies.class).to eq(Array)
      expect(@enemies.class).to eq(Array)
      expect(@affiliation.class).to eq(String)
    end

    it "return count of parks" do
      @total_members = AvatarFacade.total_members("fire_nation")

      expect(@total_members.class).to eq(Integer)
    end
  end
end
