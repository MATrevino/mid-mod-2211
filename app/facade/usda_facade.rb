class UsdaFacade
  def search_results(search_term)
    @foods = UsdaService.search_foods(search_term)
    @foods[:foods].map do |food|
      Food.new(food)
    end
  end
  
  def total_hits(search_term)
    foods = UsdaService.search_foods(search_term)
    total_hits = foods[:totalHits]
  end
end