class Zweet < ActiveRecord::Base
  belongs_to :zombie
  validates :status, :presence => true, :length => { :minimum => 3, :maximum => 144 }
end
