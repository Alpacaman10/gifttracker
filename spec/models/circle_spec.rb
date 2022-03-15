require 'rails_helper'

RSpec.describe Circle, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:relationships) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do

    end
end
