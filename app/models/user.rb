class User < ApplicationRecord
  # Direct associations

  has_many   :items,
             :foreign_key => "purchased_by_id",
             :dependent => :destroy

  has_many   :relationships,
             :dependent => :destroy

  has_many   :gifts,
             :class_name => "Item",
             :foreign_key => "created_by",
             :dependent => :destroy

  # Indirect associations

  has_many   :circles,
             :through => :relationships,
             :source => :circle

  # Validations

  # Scopes

  def to_s
    email
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
