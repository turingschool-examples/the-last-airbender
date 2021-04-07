require 'rails_helper'

RSpec.describe Member do
  describe 'happy path' do
    it 'creates a member of the affiliation based on data input' do
      member = Member.new({})

      expect(member).to be_a(Member)
    end
  end
end
