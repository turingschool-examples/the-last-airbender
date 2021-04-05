require 'rails_helper'

describe "As a user" do
  describe "When I visit the home page" do
    it "I can select a tribe and I am taken to a page with info about tribe" do
      visit root_path
      
      select('Fire Nation', from: 'nation')

      click_button("Search For Members")

      expect(current_path).to eq("/search")
    end
  end

  describe 'on the search page' do
    it "shows information abbout the tribe" do
      # Then I should see the total number of people who live in the Fire Nation. (should be close to 100)
      # And I should see a list with the detailed information for the first 25 members of the Fire Nation.
      # And for each of the members I should see:
      # - The name of the member (and their photo, if they have one)
      # - The list of allies or "None"
      # - The list of enemies or "None"
      # - Any affiliations that the member has
    end
  end
end
