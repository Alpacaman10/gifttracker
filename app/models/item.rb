class Item < ApplicationRecord
  # Direct associations

  belongs_to :purchased_by,
             :class_name => "User"

  belongs_to :creator,
             :class_name => "User",
             :foreign_key => "created_by"

  # Indirect associations

  # Validations

  validates :priority, :numericality => { :less_than_or_equal_to => 5, :greater_than_or_equal_to => 1 }

  # Scopes

  def to_s
    creator.to_s
  end

end
