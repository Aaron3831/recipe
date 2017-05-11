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

# post("/ingredients") do
#   name = params.fetch("ingredient_name")
#   Ingredient.create({:name => name})
#   redirect("/ingredients")
# end

# get("/ingredients/:id") do
#   @ingredient = Ingredient.find(params.fetch("id").to_i())
#   if @ingredient.recipe_id
#     @recipe = Recipe.find(@ingredient.recipe_id)
#   else
#     @recipe = nil
#   end
#   @recipes = Recipe.all
#   erb(:recipe)
# end

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
  meal_id = Meal.find(params.fetch("id").to_i())
  @tags = Tag.all
  erb(:recipe)
end

get("/recipe/recipe_id/ingredients") do
  @ingredients = Ingredient.all()
  
end
