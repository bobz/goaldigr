class ActsController < ApplicationController
  def create
    mission = Mission.find(params[:mission_id])
    @act = Act.create(:mission => mission)
    redirect_to(missions_path, :notice => 'Act was successfully created.')
  end
end
