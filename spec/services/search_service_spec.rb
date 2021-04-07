require 'rails_helper'
require 'ostruct'

RSpec.describe SearchService do
  describe "::get_get_nation_member_data(url, limit)" do
    it "visits an api endpoint and returns the member json data" do
      expect(SearchService.get_nation_member_data("fire_nation").class).to eq(Array)
      expect(SearchService.get_nation_member_data("fire_nation").count).to eq(97)
      expect(SearchService.get_nation_member_data("fire_nation").first.class).to eq(Hash)
    end
  end
end
