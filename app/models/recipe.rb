class Recipe < ApplicationRecord
  # Direct associations

  has_many   :taggings,
             :foreign_key => "r_id",
             :dependent => :destroy

  has_many   :comments,
             :foreign_key => "photo_id",
             :dependent => :destroy

  has_many   :likes,
             :dependent => :destroy

  belongs_to :user

  # Indirect associations

  # Validations

  validates :user_id, :presence => true

end
