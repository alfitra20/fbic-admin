class Artist < ActiveRecord::Base
	
	has_many :album
	has_many :music, :through => :album
	def display_name
		self.artistName
	end


end
