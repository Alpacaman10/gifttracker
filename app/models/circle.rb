class Circle < ApplicationRecord
  # Direct associations

  has_many   :relationships,
             :dependent => :destroy

  # Indirect associations

  has_many   :users,
             :through => :relationships,
             :source => :user

  # Validations

  # Scopes

  def to_s
    name
  end

end
