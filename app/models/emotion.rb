class Emotion < ActiveRecord::Base
	has_many :topplaylist
	has_many :history
	def to_s
		emotionType
	end
end
