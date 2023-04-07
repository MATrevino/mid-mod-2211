require 'rails_helper'

RSpec.describe 'Welcome Index Page' do
  describe "as a user to '/'" do
    describe 'I fill in the search form with sweet potatoes and click search' do
      it 'I should be on the page /foods and see a total number of items returned by the search' do
        visit '/'

        fill_in :q, with: 'sweet potatoes'

        click_on 'Search'

        expect(current_path).to eq('/foods')
        expect(page).to have_content("Search results")
        expect(page).to have_content('Total number of items returned: 51270')
      end
    end
  end
end