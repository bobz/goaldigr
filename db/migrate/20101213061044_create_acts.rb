class CreateActs < ActiveRecord::Migration
  def self.up
    create_table :acts do |t|
      t.integer :mission_id

      t.timestamps
    end
  end

  def self.down
    drop_table :acts
  end
end
