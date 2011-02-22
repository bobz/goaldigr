class SessionsController < Clearance::SessionsController
  def flash_failure_after_create
    flash[:error] = "Bad email or password."
  end
end
