require 'rails_helper'

RSpec.describe 'Search Controller Index Page' do
  describe "When I select Fire Nation from the form" do
    it "And click on search for members" do
      # @total_members = MembersFacade.total_member("Fire Nation")
      # members = MembersFacade.nation_info("Fire Nation")
      # @name = members.first.name
      # @des =   members.first.description
      # @direction = members.first.direction
      # @hours = members.first.hours

      visit '/'
      select "Fire Nation", from: :nation
      click_on "Search For Members"

      # within "##{tn.first.api_id}" do
        expect(page).to have_content(@name)
        expect(page).to have_content(@photo)
        expect(page).to have_content(@allies)
        expect(page).to have_content(@enemies)
      # end
      expect(page).to have_content(@total_members)
    end
  end
end
