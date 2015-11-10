class UsersController < ApplicationController
  def index
   @user = current_user
 end

 def update
   if current_user.update_attributes(user_params)
     flash[:notice] = "User information updated"
     redirect_to edit_user_registration_path
   else
     flash[:error] = "Invalid user information"
     redirect_to edit_user_registration_path
   end
 end

 def show
   @user = current_user
   @user = User.find(params[:id]) if params[:id]
   @items = @user.items
   
 end


private
def user_params
 params.require(:user).permit(:name)
end
end
