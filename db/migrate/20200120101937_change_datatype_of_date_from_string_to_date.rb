class ChangeDatatypeOfDateFromStringToDate < ActiveRecord::Migration[5.2]
  def change
    change_column :farmer_instruments, :is_available, :boolean
    change_column :farmer_instruments, :available_from_date, :date 
    change_column :farmer_instruments, :available_to_date, :date
  end
end
