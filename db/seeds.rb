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
  :title => 'Fitness',
  :description => 
    %{Maintain a high level of fitness.})
mission = Mission.create(
  :title => 'Pushups',
  :description => %{Do 10 pushups},
  :goal_id => goal.id)
Act.create(:mission_id => mission.id, :created_at => Time.zone.now - 10.day)
Act.create(:mission_id => mission.id, :created_at => Time.zone.now - 1.day)
mission = Mission.create(
  :title => 'Situps',
  :description => %{Do 50 situps},
  :goal_id => goal.id)
Act.create(:mission_id => mission.id, :created_at => Time.zone.now - 100.day)
Act.create(:mission_id => mission.id, :created_at => Time.zone.now - 6.day)
Act.create(:mission_id => mission.id, :created_at => Time.zone.now )
# . . .
goal = Goal.create(
  :title => 'Hygene',
  :description => 
    %{Keep myself and my surroundings clean.})
mission = Mission.create(
  :title => 'Shower',
  :description => %{Take a shower},
  :goal_id => goal.id)
Act.create(:mission_id => mission.id, :created_at => Time.zone.now - 1.day)
mission = Mission.create(
  :title => 'Brush teeth',
  :description => %{Brush your teeth (for two minutes!)},
  :goal_id => goal.id)
Act.create(:mission_id => mission.id, :created_at => Time.zone.now - 5.day)
Act.create(:mission_id => mission.id, :created_at => Time.zone.now - 1.day)
# . . .
goal = Goal.create(
  :title => 'Dating',
  :description => 
    %{Find myself a pretty girl.})
mission = Mission.create(
  :title => 'Ask for it!',
  :description => %{Ask a new girl on a date.},
  :goal_id => goal.id)
Act.create(:mission_id => mission.id, :created_at => Time.zone.now - 100.day)
Act.create(:mission_id => mission.id, :created_at => Time.zone.now - 10.day)
mission = Mission.create(
  :title => 'Go for it!',
  :description => %{Go on a date with a girl I like.},
  :goal_id => goal.id)

