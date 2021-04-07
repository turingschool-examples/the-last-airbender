require 'rails_helper'

RSpec.describe NationsFacade do
  describe 'happy path' do
    it "nation_finder returns any character with nation name in affilation" do
      result = NationsFacade.nation_residents("fire")

      # expect(data).to be_a(Array)
      # expect(data.count).to eq(111)
    end
  end
end
