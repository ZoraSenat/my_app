class Like < ApplicationRecord
  # Direct associations

  belongs_to :photo,
             :class_name => "Recipe",
             :foreign_key => "recipe_id",
             :counter_cache => true

  belongs_to :user

  # Indirect associations

  # Validations

  validates :recipe_id, :uniqueness => { :scope => [:user_id], :message => "already liked" }

  validates :recipe_id, :presence => true

  validates :user_id, :presence => true

end
