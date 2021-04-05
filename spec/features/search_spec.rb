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

  xit "displays details for first 25 members of nation" do

  end
end
