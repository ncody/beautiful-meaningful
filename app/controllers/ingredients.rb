require 'json'

get '/' do
  erb :'/recipes/index'
end

post '/recipes' do
  response = finder(params)
  data = response.as_json
  body_section = data["raw_body"]
  json_body = JSON.parse(body_section)
  body= json_body[0]
  id = body["id"]
  title = body["title"]
  session[:recipe_title] = title
  session[:recipe_id] = id
  redirect '/recipes'
end

get '/recipes' do
  @title = session[:recipe_title]
  response = recipe_id_finder(session[:recipe_id])
  data = response.as_json
  body_section = data["raw_body"]
  body = JSON.parse(body_section)
  @instructions = body["instructions"]
  extended_ingredients = body["extendedIngredients"]
  @ingredients = []
  extended_ingredients.each do |ingredient|
    @ingredients << ingredient["originalString"]
  end

  erb :'/recipes/show'
end



