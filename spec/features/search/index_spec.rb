require 'rails_helper'

describe "When I visit the root path and select fire nation and click search for memebers" do
  it "takes me to the /search page" do
    visit root_path

    select "Fire Nation", :from => "nation"
    click_button('Search For Members')

    expect(current_path).to eq(search_path)
  end

  it "displays the number of people on who live in the fire nation" do
    visit root_path

    select "Fire Nation", :from => "nation"
    click_button('Search For Members')

    expect(page).to have_content('97 people who live in the fire_nation')
  end
end
