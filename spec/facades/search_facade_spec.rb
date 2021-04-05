require 'rails_helper'

RSpec.describe SearchFacade do
  describe 'happy path' do
    it 'calls the Facade search and gets data' do
      affiliation = 'Fire Nation'

      result = SearchFacade.search(affiliation)

      expect(result[0]).to be_a(Member)
    end
  end
end
