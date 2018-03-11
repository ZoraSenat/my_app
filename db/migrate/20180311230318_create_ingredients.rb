class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name
      t.integer :aisle_id
      t.boolean :list

      t.timestamps

    end
  end
end
