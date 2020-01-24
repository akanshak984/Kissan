class FarmerInstrument < ApplicationRecord
    validates :rent_per_hour, :deposit, presence: true
    #:is_available, :available_from_date, :available_to_date
    belongs_to :farmer
    belongs_to :instrument
    has_one :rent
end
