require "rails_helper"

RSpec.describe Relationship, type: :model do
  describe "Direct Associations" do
    it { should belong_to(:circle) }

    it { should belong_to(:user) }
  end

  describe "InDirect Associations" do
  end

  describe "Validations" do
  end
end
