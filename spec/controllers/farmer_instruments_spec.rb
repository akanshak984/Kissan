require 'rails_helper'

RSpec.describe FarmerInstrumentsController, type: :controller do

    it 'Its should save data and return 200 status code' do
        create (:farmer_instrument)
        get :index
        expect(response).to have_http_status(:success)

    end

    it 'renders the template' do
        get :index
        expect(response).to render_template("index")
    end
    
    # it "It should show" do
    #     # @farmer = create(:farmer)
    #     # params1 = {id: @farmer.id}
    #     @farmer_instrument1 = create(:farmer_instrument)
    #     get :show, params: @farmer_instrument1.farmer_id
    #     expect(response).to render_template :show
    # end
    
    # it "It should edit" do
    #     @farmer = create(:farmer)
    #     params1 = {id: @farmer.id}
    #     get :edit, params: params1
    #     expect(response).to render_template :edit
    # end
    
    # it "It should render to farmers_path if creation passed" do
    #     @farmer = create(:farmer, first_name: "tejas", last_name: "zambre", mobile_number: "8080808080", email: "tzambre681@gmail.com")
    #     params1 = { "farmer" => {first_name: "sagar", last_name: "sonwane", mobile_number: "8080808082", email: "tzambre68@gmail.com"}}
    #     post :create, params: params1
    #     expect(response).to redirect_to( :action => 'index')
    # end

    # it "It should render to new_farmer_path if creation failed" do
    #     @farmer = create(:farmer, first_name: "tejas", last_name: "zambre", mobile_number: "8080808080", email: "tzambre681@gmail.com")
    #     params1 = { "farmer" => {first_name: "sagar", last_name: "sonwane", mobile_number: "8080808080", email: "tzambre681@gmail.com"}}
    #     post :create, params: params1
    #     expect(response).to redirect_to( :action => 'new')
    # end
    
end