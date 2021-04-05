require 'rails_helper'

RSpec.describe 'Search Controller Index Page' do
  describe "When I select Fire Nation from the form" do
    it "And click on search for members" do
      @total_members = AvatarFacade.total_members("fire_nation")
      members = AvatarFacade.get_members("fire_nation")
      @name = members.first[:name]
      @des =   members.first[:allies]
      @direction = members.first[:enemies]
      @hours = members.first[:affiliation]

      visit '/'
      select "Fire Nation", from: :nation
      click_on "Search For Members"

      # within "##{members.first[:name]}" do
        expect(page).to have_content(@name)
        expect(page).to have_content(@affiliation)
        expect(page).to have_content(@allies)
        expect(page).to have_content(@enemies)
      # end
      expect(page).to have_content(@total_members)
    end
  end
end
