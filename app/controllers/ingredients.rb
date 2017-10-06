require 'json'

get '/' do
  erb :'/recipes/testing'
end

# post '/recipes' do
#   response = finder(params)
#   data = response.as_json
#   body_section = data["raw_body"]
#   json_body = JSON.parse(body_section)
#   body= json_body[0]
#   id = body["id"]
#   title = body["title"]
#   session[:recipe_title] = title
#   session[:recipe_id] = id
#   redirect '/recipes'
# end

# get '/recipes' do
#   p session[:recipe_id]
#   @title = session[:recipe_title]
#   response = recipe_id_finder(session[:recipe_id])
#   p response
#   data = response.as_json
#   body_section = data["raw_body"]
#   body = JSON.parse(body_section)
#   p "JSON BODY"
#   p body

#   @instructions = body["instructions"]
#   extended_ingredients = body["extendedIngredients"]
#   @ingredients = []
#   extended_ingredients.each do |ingredient|
#     @ingredients << ingredient["originalString"]
#   end

#   erb :'/recipes/show'
# end



