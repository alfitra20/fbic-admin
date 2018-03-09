module UserHelper

	def error_messages_for(object)
		render(:partial =>'user/error_messages', :locals => {:object => object})
	end
end
