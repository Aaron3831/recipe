class CreateKeyword < ActiveRecord::Migration[5.1]
  def change
    create_table(:keywords) do |t|
      t.column(:tag_id, :integer)
      t.column(:recipe_id, :integer)

      t.timestamps()
    end
  end
end
