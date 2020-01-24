class CreateInstruments < ActiveRecord::Migration[5.2]
  def change
    create_table :instruments do |t|
      t.string :instrument_name
      t.string :brand
      t.string :specification
      t.timestamps
    end
  end
end
