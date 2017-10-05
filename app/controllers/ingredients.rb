get '/' do
  erb :index
end

post '/recipes' do
  response = finder(params)
  data = JSON.parse(response)


end

# example API request:
# response = Unirest.get "https://spoonacular-recipe-food-nutrition-v1.p.mashape.com/recipes/findByIngredients?fillIngredients=false&ingredients=apples%2Cflour%2Csugar&limitLicense=false&number=1&ranking=1",
#   headers:{
#     "X-Mashape-Key" => "Gv3u7V23s0mshlC7kUEtrveJEZYyp1U2v9hjsnFnQmcVSqSLAf",
#     "Accept" => "application/json"
#   }
