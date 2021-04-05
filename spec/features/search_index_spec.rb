require 'rails_helper'

RSpec.describe 'When I visit the four nations page' do
  it 'I can select "Fire Nation" from a dropdown,
    And when I click on "Search For Members",
    Then I see the total number of people who live in the Fire Nation,
    And I see a list with the detailed information
    for the first 25 members of the Fire Nation' do

    # nation = create(:nation)
    # person = create_list(:person, 20, nation_id: nation.id)

    visit root_path

    expect(page).to have_select(:nation)

    select "Fire Nation", from: :nation

    click_on "Search For Members"

    expect(current_path).to eq(search_path)

    # within("#person-id") do
    #
    # end

    expect(total_residents).to eq(100)
    expect(_id.count).to eq(25)

  end
end
