require 'rails_helper'
RSpec.describe 'Welcome Page' do
  describe 'happy path' do
    it 'visits root path and can select a nation from the select field' do
      visit root_path

    has_select?(:nation)

    select 'Fire Nation', from: :nation

    click_button 'Search For Members'

    expect(current_path).to eq(search_path)
    expect(page).to have_content("Fire Nation Members")
    expect(page).to have_content("Total Number of Members:")
    expect(page).to have_content("Name:")
    expect(page).to have_content("Allies:")
    expect(page).to have_content("Enemies:")
    expect(page).to have_content("Affiliations:")
    end
  end
end

# As a user,
# When I visit "/"
# And I Select "Fire Nation" from the select field
# (Note: Use the existing select field)
# And I click "Search For Members"
# Then I should be on page "/search"
# Then I should see the total number of people who live in the Fire Nation. (should be close to 100)
# And I should see a list with the detailed information for the first 25 members of the Fire Nation.
# And for each of the members I should see:
# - The name of the member (and their photo, if they have one)
# - The list of allies or "None"
# - The list of enemies or "None"
# - Any affiliations that the member has
