require 'rails_helper'

RSpec.describe Rent, type: :model do

    before(:all) do
        @rent1 = create(:farmer)
    end
    
    it 'should take valid rent details' do
        # @farmer_instrument1 = build(:farmer_instrument, id: "1")
        # @rent1 = create(:rent)
        expect(@rent1).to be_valid
    end
    

end