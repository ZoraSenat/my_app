class AddLikeCountToRecipes < ActiveRecord::Migration[5.0]
  def change
    add_column :recipes, :likes_count, :integer
  end
end
