class UsdaFacade
  def search_results(search_term)
    foods = UsdaService.search_foods(search_term)[:foods]
    foods.map do |food|
      Food.new(food)
    end
  end
end