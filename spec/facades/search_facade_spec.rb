require 'rails_helper'

RSpec.describe MemberFacade do
  it 'grabs the endpoint data' do
    fire_nation = MemberFacade.find_members('fire_nation')

    expect(fire_nation.length).to eq(25)
    expect(fire_nation).to be_a(Array)
    expect(fire_nation[0]).to be_a(OpenStruct)
  end

  it "converts data into an openstruct object " do
    fire_nation = MemberFacade.find_members('fire_nation')
    expect(fire_nation).to be_an(OpenStruct)
      expect(fire_nation).to respond_to(:name)
      expect(fire_nation).to respond_to(:photoUrl)
      expect(fire_nation).to respond_to(:allies)
      expect(fire_nation).to respond_to(:enemies)
      expect(fire_nation).to respond_to(:affiliation)
  end
end
