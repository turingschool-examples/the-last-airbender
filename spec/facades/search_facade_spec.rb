require 'rails_helper'
require 'ostruct'

RSpec.describe SearchFacade do
  describe "Happy path" do
    it "calls the nation search and gets members" do

      expect(SearchFacade.get_nation_member_data("fire_nation").class).to eq(Array)
      expect(SearchFacade.get_nation_member_data("fire_nation").count).to eq(97)
      expect(SearchFacade.get_nation_member_data("fire_nation").first.class).to eq(OpenStruct)
    end
  end
  describe "Sad path" do
    it "calls the an invalid nation search and gets members" do

      expect(SearchFacade.get_nation_member_data("ohio_state").class).to eq(Array)
      expect(SearchFacade.get_nation_member_data("ohio_state").count).to eq(0)
    end
  end

  describe "Is given an endpoint and returns members" do
    it "OpenStruct objects are created" do
      member = SearchFacade.get_nation_member_data("fire_nation").first

      expect(SearchFacade.create_member(member)).to be_an(OpenStruct)
      expect(SearchFacade.create_member(member)).to respond_to(:id)
      expect(SearchFacade.create_member(member)).to respond_to(:name)
      expect(SearchFacade.create_member(member)).to respond_to(:allies)
      expect(SearchFacade.create_member(member)).to respond_to(:enemies)
      expect(SearchFacade.create_member(member)).to respond_to(:affiliation)
    end
  end
end
