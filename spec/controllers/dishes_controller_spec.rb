require 'rails_helper'

RSpec.describe DishesController, type: :controller do
  context "GET #index" do
    it "return success response" do
      get :index
      expect(response).to be_success
    end
  end

  # context "GET #show" do
  #   let!(:dish){ Dish.create(name: "Test name", price: 10, description: "Test description",category_id: 2,id: 5)}
  #   it "return success response" do
  #     get :show, params: {id: 5}
  #     expect(response).to be_success
  #   end 
  # end


            describe 'GET #show' do
              before { get :show }
      
              it { should render_template('show') }
               expect(response).to be_success
            end
          end
end
