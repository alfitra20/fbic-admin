class Album < ActiveRecord::Base
	
	belongs_to :artist
	has_many :music
	def to_s
		albumTitle
	end
end
