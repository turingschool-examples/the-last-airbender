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
    expect(page).to have_content("20 Results")

    within(first(".nation")) do
      expect(page).to have_css(".name")
      expect(page).to have_css(".photo")
      expect(page).to have_css(".allies")
      expect(page).to have_css(".enemies")
      expect(page).to have_css(".affiliations")
    end
  end
end
