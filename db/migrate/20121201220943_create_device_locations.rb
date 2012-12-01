class CreateDeviceLocations < ActiveRecord::Migration
  def change
    create_table :device_locations do |t|
      t.string :lat
      t.string :lon
      t.string :elevation
      t.string :timestamp

      t.timestamps
    end
  end
end
