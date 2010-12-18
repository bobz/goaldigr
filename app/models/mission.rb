class Mission < ActiveRecord::Base
  has_many :acts, :dependent => :destroy
  belongs_to :goal
end
