class UserResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :email, :string
  attribute :password, :string
  attribute :name, :string

  # Direct associations

  has_many   :items,
             foreign_key: :purchased_by_id

  has_many   :relationships

  has_many   :gifts,
             resource: ItemResource,
             foreign_key: :created_by

  # Indirect associations

  many_to_many :circles

end
