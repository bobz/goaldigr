class Mission < ActiveRecord::Base
  has_many :acts, :dependent => :destroy
end
