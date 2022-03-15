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
  attribute :purchased_by_id, :integer
  attribute :circle_id, :integer
  attribute :priority, :integer

  # Direct associations

  # Indirect associations

end
