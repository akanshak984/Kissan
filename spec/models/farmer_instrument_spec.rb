require 'rails_helper'

RSpec.describe FarmerInstrument, type: :model do

    before(:all) do
        @farmer_instrument1 = create(:farmer_instrument)
    end
    
    it 'should have rent' do
        expect(@farmer_instrument1.valid?).to eq true
    end

    

end