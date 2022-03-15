require 'rails_helper'

RSpec.describe Item, type: :model do
  
    describe "Direct Associations" do

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do

    it { should validate_numericality_of(:priority).is_less_than(5).is_greater_than_or_equal_to(1) }

    end
end
