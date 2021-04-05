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



#     Then I should see the total number of people who live in the Fire Nation. (should be close to 100)
# And I should see a list with the detailed information for the first 25 members of the Fire Nation.

  end
end
