class Music < ActiveRecord::Base
	
	belongs_to :album
	belongs_to :artist
	has_many :history
	has_many :topplaylists

	def to_s
		musicTitle
	end
end
