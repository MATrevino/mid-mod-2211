class FoodsController < ApplicationController
  def index
    @foods = UsdaFacade.new.search_results(params[:q])
    binding.pry
  end
end