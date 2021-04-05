require 'rails_helper'

RSpec.describe SearchFacade do
  describe "Happy path" do
    it "calls the nation search and gets members" do

      expect(SearchFacade.get_nation_member_data("fire_nation").class).to eq(Array)
      expect(SearchFacade.get_nation_member_data("fire_nation").count).to eq(97)
      expect(SearchFacade.get_nation_member_data("fire_nation").first.class).to eq(Hash)
    end
  end
  describe "Sad path" do
    it "calls the an invalid nation search and gets members" do

      expect(SearchFacade.get_nation_member_data("ohio_state").class).to eq(Array)
      expect(SearchFacade.get_nation_member_data("ohio_state").count).to eq(0)
    end
  end
end
