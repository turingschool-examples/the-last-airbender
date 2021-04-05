require 'rails_helper'

RSpec.describe NationFacade do
  describe 'instance methods' do
    it '#get_nation_info' do
      nation = "Fire Nation"

      all_nations = NationFacade.get_nation_info(nation)

      expect(all_nations).to be_a Array
      expect(all_nations.count).to eq(20)

      first = all_nations.first
      expect(first).to be_a(Nation)

      expect(first.name).to be_a String
      expect(first.allies).to be_a Array
      expect(first.enemies).to be_a Array
      expect(first.affiliations).to be_a String
    end
  end
end
