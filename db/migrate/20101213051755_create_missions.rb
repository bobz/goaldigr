class CreateMissions < ActiveRecord::Migration
  def self.up
    create_table :missions do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :missions
  end
end
