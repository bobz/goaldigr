class AddTitleToMission < ActiveRecord::Migration
  def self.up
    add_column :missions, :title, :string
    add_column :acts, :title, :string
  end

  def self.down
    remove_column :missions, :title
    remove_column :acts, :title
  end
end
