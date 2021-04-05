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
      #maybe comeback and use allow instance of or just get change structure of this test
      visit root_path
      select('Fire Nation', from: 'nation')
      click_button("Search For Members")
      expect(current_path).to eq("/search")

      expect(page).to have_content("Nation Population: 111")

      within ".members" do
        expect(page.all('li', count: 25))

        expect(page).to have_content("Name: Bolin")
        expect(page).to have_content('Allies: ["Asami Sato"] ')
        expect(page).to have_content('Enemies: ["Amon"] ')
        expect(page).to have_content("Fire Ferrets (formerly) Kuvira's army (deserted) Team Avatar Triple Threat Triad (formerly) Republic City Police")
        # expect(page).to have_xpath("https://vignette.wikia.nocookie.net/avatar/images/d/d4/Bolin.png/revision/latest?cb=20150406232314")

        expect(page).to have_content("Name: Fire Nation airship captain")
        expect(page).to have_content('Allies: ["Qin Lee"]  ')
        expect(page).to have_content('Enemies: ["Sokka"]  ')
        expect(page).to have_content("Fire Nation")

      end
    end
  end
end



# expect(page).to have_content("#{members.first.name}")
# expect(page).to have_content("#{members.first.photo}")
# expect(page).to have_content("#{members.first.photo}")
# expect(page).to have_content("#{members.first.enemies}")
# expect(page).to have_content("#{members.first.affiliations}")
#
# expect(page).to have_content("#{members.last.name}")
# expect(page).to have_content("#{members.last.photo}")
# expect(page).to have_content("#{members.last.allies}")
# expect(page).to have_content("#{members.last.enemies}")
# expect(page).to have_content("#{members.last.affiliations}")
