class GoalsController < ApplicationController
  # TODO: somehow make it not necessary to define index
  def index
    @goals = current_user.goals.all
  end
end
