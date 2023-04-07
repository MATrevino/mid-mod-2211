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
        expect(page).to have_css(".food", count: 10)
        within(first(".food")) do
          expect(page).to have_content("SWEET POTATO PIE, SWEET POTATO")
          expect(page).to have_content("GTIN/UPC: 713733880633")
          expect(page).to have_content("Brand Owner: Meijer, Inc.")
          expect(page).to have_content("Ingredients: FILLING: SWEET POTATO, SUGAR, WATER, CORN SYRUP, EGGS, NONFAT MILK, GLYCERIN, FOOD STARCH-MODIFIED, MALTODEXTRIN, SPICES, SALT, CITRIC ACID, SORBIC ACID (PRESERVATIVE), POTASSIUM SORBATE (PRESERVATIVE), SOYBEAN AND/OR CANOLA OIL, CORNSTARCH, LOCUST BEAN GUM, CELLULOSE GUM, XANTHAN GUM, AGAR-AGAR. CRUST: ENRICHED FLOUR (WHEAT FLOUR, NIACIN, REDUCED IRON, THIAMINE MONONITRATE, RIBOFLAVIN, FOLIC ACID), PALM AND SOYBEAN AND/OR CANOLA OIL SHORTENING, WATER, SUGAR, SALT, DEXTROSE, SODIUM PROPIONATE (PRESERVATIVE), L-CYSTEINE HYDROCHLORIDE.")
        end
      end
    end
  end
end