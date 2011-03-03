class ApplicationController < ActionController::Base
  include Clearance::Authentication
  inherit_resources
  protect_from_forgery

  before_filter :authenticate
  before_filter :init

  def init
    @nav_categories = ()
    @username = nil
    if (current_user)
      @nav_categories = current_user.categories
      @username = current_user.email
    end
  end
end
