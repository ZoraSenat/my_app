class Ingredient < ApplicationRecord
  # Direct associations

  belongs_to :aisle

  has_many   :ingredient_ascs,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
