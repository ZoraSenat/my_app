class IngredientAsc < ApplicationRecord
  # Direct associations

  belongs_to :ingredient

  belongs_to :recipe,
             :foreign_key => "r_id"

  # Indirect associations

  # Validations

end
