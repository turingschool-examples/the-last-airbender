require 'rails_helper'

RSpec.describe BenderService do
  describe "happy path" do
    it 'tests the structure of our api data for people' do
      data = BenderService.all_people_from_nation('Fire Nation')

      expect(data).to be_a(Array)
      expect(data[0]).to be_a(Hash)
      expect(data[0]).to be_a(Hash)
      expect(data[0][:name]).to be_a(String)
      expect(data[0][:allies]).to be_a(Array)
      expect(data[0][:enemies]).to be_a(Array)
      expect(data[0][:affiliation]).to be_a(String)
      expect(data[1][:photoUrl]).to be_a(String)
    end
  end
end
