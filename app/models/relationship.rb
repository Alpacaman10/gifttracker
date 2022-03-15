class Relationship < ApplicationRecord
  # Direct associations

  has_many   :items,
             foreign_key: "circle_id",
             dependent: :destroy

  belongs_to :circle

  belongs_to :user

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    user.to_s
  end
end
