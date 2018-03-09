class User < ActiveRecord::Base



	EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
	has_many :history

	def display_name
		 "#{first_name} #{last_name}"
	end



	validates :first_name,  :presence => { :message => "is Required"},
	                        :length => { :maximum => 25, :message => "First Name is too long"}
								

	validates :last_name,   :presence => { :message => "is Required"},
	                        :length => { :maximum => 25, :message => "Last Name is too long"}

	validates :email, :presence => { :message => "is Required"},
	                  :length => { :maximum => 25, :message => "Email is too long"},
					  :format => { :with => EMAIL_REGEX, :message => "is Invalid"},
					  :uniqueness => { :message => "Email already registered"}

	validates :password,   :presence => { :message => "is Required"},
	                       :length => { :maximum => 15, :message => "Password is too long"}

    validates :gender,   :presence => { :message => "is Required"}
	


end
