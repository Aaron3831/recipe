require("spec_helper")

describe(Recipe) do
  it("has many ingredients") do
    test_recipe = Recipe.create({:name => "chicken parm", :meal_id => nil})
    test_ingredient1 = Ingredient.create({:name => "chicken"})
    test_ingredient2 = Ingredient.create({:name => "parm"})
    test_recipe.ingredients.push([test_ingredient1, test_ingredient2])
    expect(test_recipe.ingredients()).to(eq([test_ingredient1,test_ingredient2]))
  end
end
