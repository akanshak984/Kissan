class Address < ApplicationRecord
    validates :line_1, :city, :pincode, :state, :country, presence: true
    validates :pincode, format: { with: /\A[0-9]{5,6}\z/, 
        message: "Please enter pincode in correct format"}
    validates :farmer_id, uniqueness: true
    belongs_to :farmer
end
