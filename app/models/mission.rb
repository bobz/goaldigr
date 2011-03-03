class Mission < ActiveRecord::Base
  has_many :acts, :dependent => :destroy
  belongs_to :category

  def acts_day
	yesterday = Time.zone.now - 1.day
	logger.info yesterday.to_s(:rfc822)
    acts.where("created_at >= ?", yesterday).count
  end
  def acts_week
	yesterday = Time.zone.now - 7.day
	logger.info yesterday.to_s(:rfc822)
    acts.where("created_at >= ?", yesterday).count
  end
  def acts_month
	yesterday = Time.zone.now - 30.day
	logger.info yesterday.to_s(:rfc822)
    acts.where("created_at >= ?", yesterday).count
  end

end
