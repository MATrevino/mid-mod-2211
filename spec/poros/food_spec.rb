require 'rails_helper'

RSpec.describe Food do
  describe 'instance methods' do
    it '#initialize' do
      data = {
        "gtinUpc": "492111402857",
        "description": "SWEET POTATOES",
        "brandOwner": "ARCHER FARMS",
        "ingredients": "SWEET POTATOES."
      }
      food = Food.new(data)

      expect(food).to be_a(Food)
      expect(food.description).to eq("SWEET POTATOES")
      expect(food.gtin_upc).to eq("492111402857")
      expect(food.brand_owner).to eq("ARCHER FARMS")
      expect(food.ingredients).to eq("SWEET POTATOES.")
    end
  end
end