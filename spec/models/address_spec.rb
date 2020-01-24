require 'rails_helper'

RSpec.describe Address, type: :model do

    before(:all) do
        @address1 = create(:address)
    end
    
    it 'should take valid address details' do
        expect(@address1).to be_valid
    end
    

end