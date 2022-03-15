class Item < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :priority, :numericality => { :less_than_or_equal_to => 5, :greater_than_or_equal_to => 1 }

  # Scopes

  def to_s
    creator.to_s
  end

end
