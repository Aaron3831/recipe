class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table(:recipes) do |t|
      t.column(:name, :string)
      t.column(:keyword_id, :int)
      t.column(:meal_id, :int)
      t.column(:instructions, :string)
      t.column(:rating, :int)

      t.timestamps()
    end
  end
end
