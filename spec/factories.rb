
FactoryBot.define do
  
    factory :farmer do
        id {2}
        first_name {Faker::Name.first_name}
        last_name {Faker::Name.last_name}
        mobile_number {Faker::Number.number(10)}
        email {Faker::Internet.email}
        # association :rent
        # association :address
        # association :instrument
        # association :farmer_instrument
    end

    factory :instrument do
        id {1}
        instrument_name {Faker::Name.name}
        brand {Faker::Name.name}
        specification {Faker::Alphanumeric.alphanumeric}
        # association :farmer
        # association :farmer_instrument
        # association :rent
    end

    factory :farmer_instrument do
        # farmer_id {1}
        # instrument_id {1}
        rent_per_hour {Faker::Number.number} 
        deposit {Faker::Number.number}
        is_available {Faker::Boolean.boolean}
        available_from_date {Faker::Date.in_date_period}
        available_to_date {Faker::Date.in_date_period}
        association :farmer
        association :instrument
    end
    
    factory :rent do
        from_date {Faker::Date.in_date_period}
        to_date {Faker::Date.in_date_period}
        # farmer_id {2}
        # farmer_instrument_id {1}
        association :farmer
        association :farmer_instrument
    end

    factory :address do
        line_1 {Faker::Address.street_address}
        line_2 {Faker::Address.street_name}
        city {Faker::Address.city}
        state {Faker::Address.state}
        pincode {Faker::Address.zip}
        country {Faker::Address.country}
        association :farmer
    end

end