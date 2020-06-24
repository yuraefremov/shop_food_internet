# frozen_string_literal: true

require 'rails_helper'

RSpec.describe DishesController, type: :controller do
  
  context 'GET #index' do
    it 'return success response' do
      get :index
      expect(response).to be_success
    end
  end

  describe 'GET #show' do
    dish = FactoryBot.create(:dish)
    it 'render show template ' do
      get :show, params: { id: dish.id }
      expect(response).to be_success
    end
  end

  


end