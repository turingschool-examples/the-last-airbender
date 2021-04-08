require 'rails_helper'
RSpec.describe 'search for a members of a nation' do
  before :each do
    visit root_path
    page.select 'Fire Nation', from: :nation

    click_on 'Search For Members'
  end
  it "it can select nation and search" do
    expect(current_path).to eq(search_path)
  end

  it "displays total number of people in nation" do
    expect(page).to have_content("Total People in Nation: 97")

  end

  it "displays details for first 25 members of nation" do
    expect(page).to have_css('.member', count: 25)

    within first(".member") do
      expect(page).to have_content("Name: Chan (Fire Nation admiral)")
      expect(page).to have_content("Allies: Ozai")
      expect(page).to have_content("Enemies: Earth Kingdom")
      expect(page).to have_content("Fire Nation Navy")
      expect(page).to_not have_css('img')

    end
  end
end
