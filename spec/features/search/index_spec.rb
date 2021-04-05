require 'rails_helper'

describe "When I visit the root path and select fire nation and click search for memebers" do
  it "takes me to the /search page" do
    visit root_path

    select "Fire Nation", :from => "nation"
    click_button('Search For Members')

    expect(current_path).to eq(search_path)
  end

  it "text" do

  end
end
