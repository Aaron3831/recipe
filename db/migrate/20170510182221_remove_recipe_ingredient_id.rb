class RemoveRecipeIngredientId < ActiveRecord::Migration[5.1]
  def change
    remove_column(:ingredients,:recipe_ingredient_id, :integer)
  end
end
