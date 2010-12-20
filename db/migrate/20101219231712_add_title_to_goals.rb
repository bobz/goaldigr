class AddTitleToGoals < ActiveRecord::Migration
  def self.up
    add_column :goals, :title, :string
    add_column :goals, :description, :text
	
	Goal.all.each do |goal|
      goal.title = goal.short_desc
	  goal.description = goal.long_desc
	  goal.save
	end

	remove_column :goals, :short_desc
	remove_column :goals, :long_desc

  end

  def self.down
  	add_column :goals, :short_desc, :string
	add_column :goals, :long_desc, :text

	Goal.all.each do |goal|
      goal.short_desc = goal.title
	  goal.long_desc = goal.description
	  goal.save
	end

    remove_column :goals, :description
    remove_column :goals, :title
  end
end
