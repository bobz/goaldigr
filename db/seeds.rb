#---
# Excerpted from "Agile Web Development with Rails, 4rd Ed.",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/rails4 for more book information.
#---
# encoding: utf-8
Goal.delete_all
# . . .
Goal.create(
  :category => 'Coding',
  :short_desc => 'Work on GoalDigr',
  :long_desc => 
    %{<p>
     Spend an hour coding on GoalDigr without interuption.
	  </p>})
# . . .
Goal.create(
  :category => 'Fitness',
  :short_desc => 'Pushups',
  :long_desc => 
    %{<p>
     Do some pushups.
	  </p>})
# . . .
Goal.create(
  :category => 'Fitness',
  :short_desc => 'Yoga or Kickboxing',
  :long_desc => 
    %{<p>
	  Attend a yoga or kickboxing class.
	  </p>})
# . . .
