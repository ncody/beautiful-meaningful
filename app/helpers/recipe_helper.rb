def seperate_ingredients(form_input)
    ingredient_list = form_input["ingredients"]
    ingredient_list.split(",")
  end

  def ingredient_url(form_input)
    ingredients = seperate_ingredients(form_input)
    length = ingredients.length
    url = ingredients[0]
    i = 1
    while i < length
      url += "%2C" + ingredients[i]
      i += 1
    end
    url
  end

  def finder(form_input)
    url = ingredient_url(form_input)
    response = Unirest.get "https://spoonacular-recipe-food-nutrition-v1.p.mashape.com/recipes/findByIngredients?fillIngredients=false&ingredients=" + url + "&limitLicense=false&number=1",
  headers:{
    "X-Mashape-Key" => ENV["SPOONACULAR_ACCESS_TOKEN"],
    "Accept" => "application/json"
  }
  end


  def recipe_id_finder(id)
    response = Unirest.get "https://spoonacular-recipe-food-nutrition-v1.p.mashape.com/recipes/" + id.to_s + "/information?includeNutrition=false",
  headers:{
    "X-Mashape-Key" => ENV["SPOONACULAR_ACCESS_TOKEN"],
    "Accept" => "application/json"
  }
end



