require "rails_helper"

RSpec.describe Item, type: :model do
  describe "Direct Associations" do
    it { should belong_to(:circle) }

    it { should belong_to(:purchased_by) }

    it { should belong_to(:creator) }
  end

  describe "InDirect Associations" do
  end

  describe "Validations" do
    it {
      should validate_numericality_of(:priority).is_less_than(5).is_greater_than_or_equal_to(1)
    }

    it { should validate_uniqueness_of(:purchased_by_id).allow_nil }
  end
end
