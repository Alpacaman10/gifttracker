class ItemResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :created_by, :integer
  attribute :image, :string
  attribute :url, :string
  attribute :description, :string
  attribute :price, :float
  attribute :received, :boolean
  attribute :circle_id, :integer
  attribute :priority, :integer
  attribute :name, :string

  # Direct associations

  belongs_to :circle

  belongs_to :creator,
             resource: UserResource,
             foreign_key: :created_by

  # Indirect associations
end
