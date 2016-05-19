class Topplaylist < ActiveRecord::Base
	belongs_to :emotion
	belongs_to :music
end
