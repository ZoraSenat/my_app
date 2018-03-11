class Tagging < ApplicationRecord
  # Direct associations

  belongs_to :tag

  belongs_to :recipe,
             :foreign_key => "r_id"

  # Indirect associations

  # Validations

end
