class AddUserToGoal < ActiveRecord::Migration
  def self.up
	user = ::User.where(:email => "bobz@bobz.in").first
	if (! user)
	then
	  user = ::User.new(:email => "bobz@bobz.in", :password => "tmp123", :password_confirmation => "tmp123")
	  user.save
    end
    add_column :goals, :user_id, :integer, :default => user.id
  end

  def self.down
    remove_column :goals, :user_id
  end
end
