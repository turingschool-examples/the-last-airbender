require 'rails_helper'

RSpec.describe "User can search for nation by name" do
  it 'When I select Fire Nation from form,
      I should see:
      - The name of the member (and their photo, if they have one)
      - The list of allies or "None"
      - The list of enemies or "None"
      - Any affiliations that the member has' do
    visit '/'
    select "Fire Nation", from: :nation
    click_on "Search For Members"
    expect(current_path).to eq(search_path) 
  end
end
