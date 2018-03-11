class Aisle < ApplicationRecord
  # Direct associations

  has_many   :ingredients,
             :dependent => :nullify

  # Indirect associations

  # Validations

end
