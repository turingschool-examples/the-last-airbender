require 'rails_helper'

RSpec.describe "Search Index Page" do
  describe "As a user, When I visit '/' " do
    describe "And I Select Fire Nation from the select field And I click 'Search For Members' " do
      it "I should be on page '/search'" do
        visit root_path
          within ".select-field" do
            select 'Fire Nation'
          end
          click_button('Search For Members')
          expect(current_path).to eq(search_path)
      end
      it "I should see the total number of people who live in the Fire Nation" do

      end
    end
  end
end
#
# And I Select "Fire Nation" from the select field
# (Note: Use the existing select field)
# And I click "Search For Members"
# Then I should be on page "/search"
# Then I should see the total number of people who live in the Fire Nation. (should be close to 100)
# And I should see a list with the detailed information for the first 25 members of the Fire Nation.