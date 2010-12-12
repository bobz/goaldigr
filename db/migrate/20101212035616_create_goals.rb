class CreateGoals < ActiveRecord::Migration
  def self.up
    create_table :goals do |t|
      t.string :category
      t.string :short_desc
      t.text :long_desc

      t.timestamps
    end
  end

  def self.down
    drop_table :goals
  end
end
