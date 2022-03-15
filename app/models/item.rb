class Item < ApplicationRecord
  mount_base64_uploader :image, ImageUploader

  # Direct associations

  belongs_to :circle

  belongs_to :purchased_by,
             class_name: "User"

  belongs_to :creator,
             class_name: "User",
             foreign_key: "created_by"

  # Indirect associations

  # Validations

  validates :priority,
            numericality: { less_than_or_equal_to: 5,
                            greater_than_or_equal_to: 1 }

  validates :purchased_by_id, uniqueness: { allow_blank: true }

  # Scopes

  def to_s
    creator.to_s
  end
end
