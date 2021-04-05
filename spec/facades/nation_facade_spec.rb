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
    end   
  end
end
