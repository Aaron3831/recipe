class CreateIngredients < ActiveRecord::Migration[5.1]
  def change
    create_table(:ingredients) do |t|
      t.column(:name, :string)
      t.column(:recipe_ingredient_id, :integer)

      t.timestamps()
    end
  end
end
