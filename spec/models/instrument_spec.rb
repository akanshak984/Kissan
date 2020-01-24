require 'rails_helper'

RSpec.describe Instrument, type: :model do

    before(:all) do
        @instrument1 = create(:instrument)
    end
    
    it 'should take valid instrument details' do
        # @instrument1 = create(:instrument, id:4)
        expect(@instrument1).to be_valid
    end
    

end