class Food 
  attr_reader :description, :gtin_upc, :brand_owner, :ingredients

  def initialize(data)
    @total_hits = data[:totalHits]
    @description = data[:foods].first[:description]
    @gtin_upc = data[:foods].first[:gtinUpc]
    @brand_owner = data[:foods].first[:brandOwner]
    @ingredients = data[:foods].first[:ingredients]
  end
end