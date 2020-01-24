class Rent < ApplicationRecord
    validates :from_date, :to_date, :farmer_instrument_id, :farmer_id, presence: true
    validates :farmer_instrument_id, uniqueness: true
    belongs_to :farmer
    belongs_to :farmer_instrument
end
