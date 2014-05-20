class DashboardController < ApplicationController

  def index
    @result = nil
    if params['user_input']
      api_key = 'd8372703aeb94b7035ce12d07f61ba84'
      api_id = 'ceadf6d2'
      query = params['user_input']
      api_url = "https://api.nutritionix.com/v1_1/search/#{query}?results=0:01&fields=item_name,brand_name,item_id,nf_calories,nf_carbohydrates,nf_protein,nf_carbs&appId=#{api_id}&appKey=#{api_key}"
      @result = HTTParty.get(api_url)
    end
  end

  def submit

  end
  
end
