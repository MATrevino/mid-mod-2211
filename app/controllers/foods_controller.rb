class FoodsController < ApplicationController
  def index
    @foods = UsdaFacade.new.search_results(params[:q]).first(10)
    @total_hits = UsdaFacade.new.total_hits(params[:q])
  end
end