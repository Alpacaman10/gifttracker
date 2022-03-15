class RelationshipResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :user_id, :integer
  attribute :circle_id, :integer

  # Direct associations

  has_many   :items,
             foreign_key: :circle_id

  belongs_to :circle

  belongs_to :user

  # Indirect associations

end
