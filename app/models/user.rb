class User < ActiveRecord::Base
  include Clearance::User

  has_many :goals, :dependent => :destroy

  after_create :populate_default_data

  def populate_default_data
    puts "IN POP DEF DATA"
    goal = goals.build(
      :title => 'Dig on GoalDigr',
      :description => 
        %{I want to use GoalDigr to hack my brain into doing all kinds of awesome.
		})
    puts "GOAL #{goal.title}"
	goal.save
    mission = goal.missions.build(
      :title => 'Define Goals',
      :description => %{Define a few high level goals on the Goals page.  This should be high level things, like
                        "Get really huge" or "Read more books" or "Eat better".  I've found it useful to start simple,
					    with just a few things you're already doing, and build from there.  You can "Destroy" this mission
					    on the missions page when it is done.
						})
    mission.save
	mission = goal.missions.build(
      :title => 'Daily Update',
      :description => %{Check GoalDigr at the end of the day, and make sure you've entered all the appropriate
      				    points you earned today.  (I found tracking this task was a great way to get started.  It's a 
						perfect use case to let you see how addictive being rewarded for doing one simple thing [logging on
						to the site] every night can be.)
						})
    mission.save
    mission = goal.missions.build(
      :title => 'Weekly Evaluation',
      :description => %{At least once a week, spend a few minutes thinking about my goals, and if any new missions 
    				    would help me to accomplish them better.
						})
    mission.save
  end

  def to_s
    email
  end
end
