require "rails_helper"

RSpec.describe User, type: :model do
  describe "Direct Associations" do
    it { should have_many(:relationships) }

    it { should have_many(:gifts) }
  end

  describe "InDirect Associations" do
    it { should have_many(:circles) }
  end

  describe "Validations" do
  end
end
