class Recipe < ApplicationRecord
  # Direct associations

  has_many   :ingredient_ascs,
             :foreign_key => "r_id",
             :dependent => :destroy

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

  has_many   :fans,
             :through => :likes,
             :source => :user

  # Validations

  validates :user_id, :presence => true

end
