class AddDescriptionToMission < ActiveRecord::Migration
  def self.up
    add_column :missions, :description, :text
  end

  def self.down
    remove_column :missions, :description
  end
end
