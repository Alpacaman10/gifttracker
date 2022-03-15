class Relationship < ApplicationRecord
  # Direct associations

  belongs_to :circle

  belongs_to :user

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    user.to_s
  end

end
