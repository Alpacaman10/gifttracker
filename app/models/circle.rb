class Circle < ApplicationRecord
  # Direct associations

  has_many   :relationships,
             :dependent => :destroy

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    name
  end

end
