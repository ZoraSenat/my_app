class Like < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :recipe_id, :presence => true

  validates :user_id, :presence => true

end
