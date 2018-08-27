class AddHolidayToTiming < ActiveRecord::Migration[5.1]
  def change
    add_column :timings,:holiday,:boolean
  end
end
