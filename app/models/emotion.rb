class Emotion < ActiveRecord::Base
	has_many :topplaylist
	has_many :history
	def display_name
		self.emotionType
	end
end
