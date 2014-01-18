class Zombie < ActiveRecord::Base
  validates :name, :presence => true, :length => { :minimum => 3, :maximum => 50 }
  validates :grave, :presence => true, :length => { :minimum => 3, :maximum => 144 }
  has_many :zweets
end
