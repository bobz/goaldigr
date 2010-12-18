class Goal < ActiveRecord::Base
  has_many :missions
  
  before_destroy :ensure_not_referenced_by_any_mission

  def ensure_not_referenced_by_any_mission
    if missions.count.zero? 
      return true
	else 
	  errors.add(:base, 'Missions present')
      return false
   end
  end
end
