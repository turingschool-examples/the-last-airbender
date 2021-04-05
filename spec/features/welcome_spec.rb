require 'rails_helper'

RSpec.describe "As a user when I " do
  describe "visit the welcome page and click search for members" do
    it "it brings me to page with all the members of that specific nation" do
        visit root_path
        select 'Fire Nation',  from: 'nation'
        click_button 'Search For Members'
        expect(path).to be("/search")
        expect(page).to have_content("100 Members")
    end
  end
end
