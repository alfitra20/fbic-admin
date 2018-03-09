class Artist < ActiveRecord::Base
	
	has_many :album
	has_many :music, :through => :album
	def to_s
		artistName
	end
end
