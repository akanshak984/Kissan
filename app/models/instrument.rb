class Instrument < ApplicationRecord
    validates :instrument_name, presence: true
    has_many :farmers, through: :farmer_instruments
    has_many :farmer_instruments
end
