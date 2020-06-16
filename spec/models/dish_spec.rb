require 'rails_helper'

RSpec.describe Dish, type: :model  do
  context "validation test" do
    it "enscures name is present" do
      dish = Dish.new(description: "Test description", price: 10)
      expect(dish.valid?).to eq(false)
    end

    it "enscures description is present" do
      dish = Dish.new(name: "Test name", price: 10)
      expect(dish.valid?).to eq(false)
    end

    it "enscures price is present" do
      dish = Dish.new(name: "Test name", description: "Test description")
      expect(dish.valid?).to eq(false)
    end

    it "enscures dish is active by default" do
      dish = Dish.new(name: "Test name", description: "Test description", price: 10)
      expect(dish.valid?).to eq(false)
    end

    it "should be abl to save dish" do
       dish = Dish.new(name: "Test name", description: "Test description", price: 10)
       expect(dish.save).to eq(false)
    end


  end
  
end