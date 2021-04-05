require 'rails_helper'

RSpec.describe NationService do
  describe 'instance methods' do
    describe '#get_nation_info' do
      it 'returns nation data' do
        nation = "Fire Nation"

        result = NationService.get_nation_info(nation)

        expect(result).to be_a Array

        first = result.first
        expect(first).to have_key :name
        expect(first[:name]).to be_a String

        # I didn't have time to finish this test 
      end
    end
  end
end
