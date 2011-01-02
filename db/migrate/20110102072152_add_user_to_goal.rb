class AddUserToGoal < ActiveRecord::Migration
  def self.up
	user = ::User.where(:email => "bobz@bobz.in").first
	if (! user)
	then
	  user = ::User.new(:email => "bobz@bobz.in", :password => "tmp123", :password_confirmation => "tmp123")
	  user.save
	  
	  puts "Created new user"
    end

	puts "Migration User: #{user.email}  ##{user.id}"

    add_column :goals, :user_id, :integer, :default => user.id
	
	Goal.where(:user_id => nil).each do |goal|
	  goal.user_id = user.id
      goal.save
	end

  end

  def self.down
    remove_column :goals, :user_id
  end
end
