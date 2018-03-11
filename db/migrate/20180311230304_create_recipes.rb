class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :description
      t.integer :user_id
      t.string :link
      t.string :title
      t.string :image

      t.timestamps

    end
  end
end
