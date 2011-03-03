class RenameGoalsTableToCategories < ActiveRecord::Migration
  def self.up
    rename_table :goals, :categories
    rename_column :missions, :goal_id, :category_id
  end

  def self.down
    rename_table :categories, :goals
    rename_column :missions, :goal_id, :category_id
  end
end
