class CreateTag < ActiveRecord::Migration[5.1]
  def change
    create_table(:tags) do |t|
      t.column(:name, :string)
      t.column(:keyword_id, :integer)

      t.timestamps()
    end
  end
end
