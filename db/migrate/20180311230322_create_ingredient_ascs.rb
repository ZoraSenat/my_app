class CreateIngredientAscs < ActiveRecord::Migration
  def change
    create_table :ingredient_ascs do |t|
      t.integer :ingredient_id
      t.integer :r_id

      t.timestamps

    end
  end
end
