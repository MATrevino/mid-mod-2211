require 'faraday'

class UsdaService

  def self.search_foods(search_term)
    get_url("/fdc/v1/foods/search?query=#{search_term}&pageSize=50&pageNumber=2")
  end
  
  private
  
  def self.get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end
  
  def self.conn 
    Faraday.new(url: "https://api.nal.usda.gov") do |faraday|
      faraday.params['api_key'] = ENV['USDA_API_KEY']
    end
  end
end