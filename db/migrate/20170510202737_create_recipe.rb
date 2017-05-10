class CreateRecipe < ActiveRecord::Migration[5.1]
  def change
    create_table(:recipes) do |t|
      t.column(:name, :string)
      t.column(:recipe_tag_id, :int)
      t.column(:ingredient_recipe_id, :int)
      t.column(:instructions, :string)
      t.column(:rating, :int)

      t.timestamps()
    end
  end
end
