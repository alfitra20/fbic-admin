class UserController < ApplicationController

  layout = false
  def index
  end

  def new

  	@user=User.new

  end

  def create

  	@user = User.new(user_params)
    
      	if @user.save

   
          flash[:notice] = "You are succesfully registered, You can Login Now"
  	     	redirect_to(:action =>'index')

      	else

        flash[:error] = "Ooooppss, something went wrong!"
  	   	render('new')
  
  end
end  



private

  def user_params
    params.require(:user).permit(:email,:password,:first_name,:last_name,:gender,)
  end


end
