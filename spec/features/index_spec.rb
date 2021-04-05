require 'rails_helper'

RSpec.describe "As a user when I " do
  describe "visit the welcome page and click search for members" do
    it "it brings me to page with all the members of that specific nation" do
        visit root_path
        select 'Fire Nation',  from: 'nation'
        click_button 'Search For Members'
        expect(current_path).to eq("/search")
        expect(page).to have_content("96 Members")
        expect(page).to have_content("Name: Chan (Fire Nation admiral)")
        expect(page).to have_content("Allies: Ozai")
        expect(page).to have_content("Enemies: Earth Kingdom")
        expect(page).to have_content("Affiliation: Fire Nation")
    end
  end
end
