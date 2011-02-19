class ApplicationController < ActionController::Base
  include Clearance::Authentication
  inherit_resources
  protect_from_forgery

  before_filter :authenticate
  before_filter :init

  def init
    @nav_goals = ()
    @username = nil
    if (current_user)
      @nav_goals = current_user.goals
      @username = current_user.email
    end
  end
end
