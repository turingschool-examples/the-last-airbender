require 'rails_helper'

RSpec.describe NationService do
  describe 'instance methods' do
    describe '#get_nation_info' do
      it 'returns nation data' do
        nation = "Fire Nation"

        result = NationService.get_nation_info(nation)

        expect(result).to be_a Hash

      end
    end
  end
end
