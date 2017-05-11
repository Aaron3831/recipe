require("bundler/setup")
Bundler.require(:default)
require('pry')

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get('/') do
  erb(:index)
end

get ('/recipes') do
  @recipes = Recipe.all()
  erb(:recipes)
end

post ('/recipes') do
  recipe_name = params.fetch('recipe_name')
  @recipes = Recipe.create({:name => recipe_name})
  redirect("/recipes")
end

get ('/ingredients') do
  @ingredients = Ingredient.all()
  erb(:ingredients)
end

post ('/ingredients') do
  ingredient_name = params.fetch('ingredient_name')
  @ingredients = Ingredient.create({:name => ingredient_name})
  redirect("/ingredients")
end

get ('/tags') do
  @tags = Tag.all()
  erb(:tags)
end

post ('/tags') do
  tag_name = params.fetch('tag_name')
  @tags = Tag.create({:name => tag_name})
  redirect("/tags")
end

get("/recipes/:id") do
  @recipe = Recipe.find(params.fetch("id").to_i())
  @ingredients = Ingredient.all()
  erb(:recipe)
end

post ('/recipes/:id') do
  @recipe = Recipe.find(params.fetch("id").to_i())
  ingredient = Ingredient.find(params[:ingredient_id].to_i)
  @recipe.ingredients.push(ingredient)
  redirect("/recipes/".concat(@recipe.id.to_s))
end
