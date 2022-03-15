require "rails_helper"

RSpec.describe Circle, type: :model do
  describe "Direct Associations" do
    it { should have_many(:items) }

    it { should have_many(:relationships) }
  end

  describe "InDirect Associations" do
    it { should have_many(:users) }
  end

  describe "Validations" do
  end
end
