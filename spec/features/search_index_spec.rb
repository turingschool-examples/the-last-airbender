require 'rails_helper'

RSpec.describe 'When I visit the four nations page' do
  it 'I can select "Fire Nation" from a dropdown,
    And when I click on "Search For Members",
    Then I see the total number of people who live in the Fire Nation,
    And I see a list with the detailed information
    for the first 25 members of the Fire Nation' do

    visit root_path

    expect(page).to have_select(:nation)

    select "Fire Nation", from: :nation

    click_on "Search For Members"

    expect(current_path).to eq(search_path)

    # # within("#person-id") do
    #   # expect(#persons id).to eq(person._id)
    #   expect(person).to have_content("Fire nation train conductor")
    #   expect(person).to have_content("Aang")
    #   expect(person).to have_content("Combustion Man")
    #   expect(person).to have_content("Fire Nation Fire Nation train")
    # # end

    expect(page).to have_content("97 Affiliates")
    expect("Chan (fire nation admiral)").to appear_before("Fire nation train conductor")
  end
end
