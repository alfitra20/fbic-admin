class User < ActiveRecord::Base

	has_many :history

	def to_s
		"#{first_name} #{last_name}"
	end
end
