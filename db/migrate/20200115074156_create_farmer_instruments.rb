class CreateFarmerInstruments < ActiveRecord::Migration[5.2]
  def change
    create_table :farmer_instruments do |t|
      t.string :is_available
      t.string :rent_per_hour
      t.string :deposit
      t.string :available_from_date
      t.string :available_to_date
      t.timestamps
      t.references :farmer, :instrument
    end
  end
end
