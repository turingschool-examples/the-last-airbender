require 'rails_helper'
require 'ostruct'

RSpec.describe "As a user", type: :feature do
  describe "when I visit the root path" do
    it "lets me search for members after selecting a nation" do
      visit root_path
      select "Fire Nation", :from => "nation"
      click_on "Search For Members"

      expect(current_path).to eq("/search")
      expect(page).to have_content("Fire Nation")
      expect(page).to have_content("97 Members")

      within "#member-5cf5679a915ecad153ab68fd" do
        expect(page).to have_content("Name: Chan (Fire Nation admiral)")
        expect(page).to have_content("Allies: Ozai")
        expect(page).to have_content("Enemies: Earth Kingdom")
        expect(page).to have_content("Affiliations: Fire Nation Navy")
      end

      within "#member-5cf5679a915ecad153ab692a" do
        expect(page).to have_content("Name: Fire Nation train conductor")
        expect(page).to have_content("Allies: Aang")
        expect(page).to have_content("Enemies: Combustion Man")
        expect(page).to have_content("Affiliations: Fire Nation Fire Nation train")
      end
    end
  end
end
