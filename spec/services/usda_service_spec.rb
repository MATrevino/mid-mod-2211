require 'rails_helper'

RSpec.describe UsdaService do
  describe 'class methods' do
    it '.search_foods' do
      search_results = UsdaService.search_foods('sweet potatoes')

      expect(search_results).to be_a(Hash)
      expect(search_results[:foods]).to be_an(Array)
      expect(search_results[:foods].first).to have_key(:gtinUpc)
      expect(search_results[:foods].first).to have_key(:description)
      expect(search_results[:foods].first).to have_key(:brandOwner)
      expect(search_results[:foods].first).to have_key(:ingredients)
    end
  end
end