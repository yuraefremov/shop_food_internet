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

  # describe 'GET #new' do
  #   before do
  #     get :new
  #   end
  #   it 'assingns a New Dish to @dish' do
  #     expect(assigns(:dish)).to be_a_new(Dish)
  #   end
  #   it 'renders new views' do
  #     expect(response).to render_template :new
  #   end
  # end
  
end
