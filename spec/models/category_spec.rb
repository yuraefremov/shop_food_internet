# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Category, type: :model do
  context 'validation test' do
    it 'enscures name is present' do
      category = Category.new
      expect(category.valid?).to eq(false)
    end

    it 'enscures category is active by default' do
      category = Category.new(name: 'Test name')
      expect(category.valid?).to eq(true)
    end
  end
end
