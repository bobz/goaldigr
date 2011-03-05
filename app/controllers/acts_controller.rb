class ActsController < ApplicationController
  def create
    mission = Mission.find(params[:mission_id])
    @act = Act.create(:mission => mission)
	
	render :json => [mission.acts_day, mission.acts_week, 
	  mission.acts_month, mission.acts.count]
	
	
  end
end
