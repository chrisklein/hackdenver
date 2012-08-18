class BeaconsTable < ActiveRecord::Migration
  def up
    create_table :beacons do |t|
      t.integer :user_id
      t.string :lat
      t.string :long
      t.string :description, :limit => 300
      t.integer :duration
    end
  end

  def down
    drop_table :beacons
  end
end
