class MissionsController < ApplicationController
  def index
    @goals = current_user.goals.all
  end
end
