require 'rails_helper'

RSpec.describe Farmer, type: :model do

    # before(:all) do
    #     @farmer1 = create(:farmer)
    # end
    
    it 'should create a valid farmer account' do
        @farmer1 = create(:farmer, email: "abc@def.cpm", id:4)
        expect(@farmer1).to be_valid
    end
    
    it "has a unique email" do
        farmer1 = create(:farmer, email: "abc@def.cpm", id:5)
        farmer2 = build(:farmer, email: "abc@def.cpm", id:3)
        expect(farmer2).to_not be_valid
    end
    
    it "is not valid without an email" do
        farmer2 = build(:farmer, email: nil)
        expect(farmer2).to_not be_valid
    end

    it "should have 10 digit phone number" do
        farmer1 = build(:farmer, mobile_number: "9876789")
        expect(farmer1).to_not be_valid
    end

end