class AddGoalIdToMission < ActiveRecord::Migration
  def self.up
    add_column :missions, :goal_id, :integer
	remove_column :goals, :category
  end

  def self.down
    remove_column :missions, :goal_id
	add_column :goals, :category, :string
  end
end
