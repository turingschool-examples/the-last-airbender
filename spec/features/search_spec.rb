require 'rails_helper'
RSpec.describe 'search for a members of a nation' do
  it "it can select nation and search" do
    visit root_path
    page.select 'Fire Nation', from: :nation

    click_on 'Search For Members'
    save_and_open_page

    expect(current_path).to eq(search_path)
  end

  xit "displays total number of people in nation" do
    

  end

  xit "displays details for first 25 members of nation" do

  end
end
