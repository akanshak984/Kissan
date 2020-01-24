class CreateRents < ActiveRecord::Migration[5.2]
  def change
    create_table :rents do |t|
      t.string :from_date
      t.string :to_date
      t.timestamps
      t.references :farmer, :farmer_instrument
    end
  end
end
