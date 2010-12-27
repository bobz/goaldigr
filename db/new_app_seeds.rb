#---
# Excerpted from "Agile Web Development with Rails, 4rd Ed.",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/rails4 for more book information.
#---
# encoding: utf-8
Act.delete_all
Mission.delete_all
Goal.delete_all
# . . .
goal = Goal.create(
  :title => 'Dig on GoalDigr',
  :description => 
    %{I want to use GoalDigr to hack my brain into doing all kinds of awesome.})
mission = Mission.create(
  :title => 'Define Goals',
  :description => %{Define a few high level goals on the Goals page.  This should be high level things, like
                    "Get really huge" or "Read more books" or "Eat better".  I've found it useful to start simple,
					with just a few things you're already doing, and build from there.  You can "Destroy" this mission
					on the missions page when it is done.},
  :goal_id => goal.id)
mission = Mission.create(
  :title => 'Daily Update',
  :description => %{Check GoalDigr at the end of the day, and make sure you've entered all the appropriate
      				points you earned today.  (I found tracking this was a great way to get started, and make
					sure you kept up with the site, especially early on when you aren't tracking many things.},
  :goal_id => goal.id)
# . . .
mission = Mission.create(
  :title => 'Weekly Evaluation',
  :description => %{At least once a week, spend a few minutes thinking about my goals, and if any new missions 
    				would help me to accomplish them better.},
  :goal_id => goal.id)

