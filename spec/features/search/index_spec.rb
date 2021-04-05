require 'rails_helper'

describe "When I visit the root path and select fire nation and click search for memebers" do
  it "takes me to the /search page" do
    visit root_path

    select "Fire Nation", :from => "nation"
    click_button('Search For Members')

    expect(current_path).to eq(search_path)
  end

  it "displays the number of people who live in the fire nation" do
    visit root_path

    select "Fire Nation", :from => "nation"
    click_button('Search For Members')

    expect(page).to have_content('97 people who live in the fire_nation')
  end

  it "displays the name of the top 25 people who live in the fire nation" do
    visit root_path

    select "Fire Nation", :from => "nation"
    click_button('Search For Members')

    expect(page.all('p', count: 26))
    expect(page).to have_content('Name: Chan (Fire Nation admiral)')
  end

  it "displays the names of allies of the top 25 people who live in the fire nation or none" do
    visit root_path

    select "Fire Nation", :from => "nation"
    click_button('Search For Members')

    expect(page.all('li', count: 25))
    expect(page).to have_content('Allies: ["Ozai"]')
  end

  it "displays the names of enemies of the top 25 people who live in the fire nation or none" do
    visit root_path

    select "Fire Nation", :from => "nation"
    click_button('Search For Members')

    expect(page.all('dd', count: 25))
    expect(page).to have_content('Enemies: ["Earth Kingdom"]')
  end

  it "displays the affiliation of the top 25 people who live in the fire nation" do
    visit root_path

    select "Fire Nation", :from => "nation"
    click_button('Search For Members')

    expect(page.all('em', count: 25))
    expect(page).to have_content('Affiliation: Fire Nation Navy')
  end
end
