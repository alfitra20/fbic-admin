class Music < ActiveRecord::Base
	
	belongs_to :album
	belongs_to :artist
	has_many :history
	has_many :topplaylists

	def display_name
		self.musicTitle
	end
end
