class User < ApplicationRecord
  # Direct associations

  has_many   :relationships,
             :dependent => :destroy

  has_many   :gifts,
             :class_name => "Item",
             :foreign_key => "created_by",
             :dependent => :destroy

  # Indirect associations

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
