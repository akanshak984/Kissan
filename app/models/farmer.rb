class Farmer < ApplicationRecord
    
    validates :mobile_number, :first_name, :last_name, :email, presence: true
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP, 
        message: "Please enter email in correct format"}
    validates :mobile_number, format: { with: /\A[0-9]{10}\z/,
        message: "Please enter mobile number in correct format"}
    validates :mobile_number, :email, uniqueness: true

    has_one :address
    has_many :instruments, through: :farmer_instruments
    has_many :farmer_instruments
    has_many :rents #, through: :farmer_instruments


    before_save :titleize_name

    def titleize_name
        self.first_name = self.first_name.titleize 
        self.last_name = self.last_name.titleize
    end

    def full_name
        return "#{self.first_name} #{self.last_name}" 
    end

end
