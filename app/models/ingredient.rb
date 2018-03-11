class Ingredient < ApplicationRecord
  # Direct associations

  has_many   :ingredient_ascs,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
