class History < ActiveRecord::Base

	belongs_to :user
	belongs_to :music
	belongs_to :emotion 
	
end
