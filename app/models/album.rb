class Album < ActiveRecord::Base
	
	belongs_to :artist
	has_many :music
	def display_name
		self.albumTitle
		
	end
end
