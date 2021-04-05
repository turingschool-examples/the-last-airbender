require 'rails_helper'

RSpec.describe SearchFacade do
  it 'grabs the endpoint data' do
    fire_nation = SearchFacade.find_members('fire_nation')

    expect(fire_nation.length).to eq(25)
    expect(fire_nation).to be_a(Array)
    expect(fire_nation[0]).to be_a(Member)
  end
end
