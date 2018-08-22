class CreateTimings < ActiveRecord::Migration[5.1]
  def change
    create_table :timings do |t|
      t.integer :year
      t.integer :semester
      t.string :month
      t.integer :day
      t.string :name

      t.timestamps
    end
  end
end
