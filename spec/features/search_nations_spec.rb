require 'rails_helper'

RSpec.describe "As a user", type: :feature do
  describe "when I visit the root path" do
    it "lets me search for members after selecting a nation" do
      # As a user,
      # When I visit "/"
      visit root_path
      # And I Select "Fire Nation" from the select field
      select "Fire Nation", :from => "nation"
      # (Note: Use the existing select field)
      # And I click "Search For Members"
      click_on "Search For Members"
      # Then I should be on page "/search"
      expect(current_path).to be("/search")
      # Then I should see the total number of people who live in the Fire Nation. (should be close to 100)

      # And I should see a list with the detailed information for the first 25 members of the Fire Nation.
      # And for each of the members I should see:
      within "#member-#{memeber.id}"
        expect(page).to have_content("Name")
      # - The name of the member (and their photo, if they have one)
      expect(page).to have_content("Alies")
      # - The list of allies or "None"
        expect(page).to have_content("Enemies")
      # - The list of enemies or "None"
      expect(page).to have_content("Affiliations")
      # - Any affiliations that the member has

    end
  end
end
