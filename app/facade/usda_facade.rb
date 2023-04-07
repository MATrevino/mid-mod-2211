class UsdaFacade
  def search_results(search_term)
    foods = UsdaService.search_foods(search_term)
      Food.new(foods)
  end
end