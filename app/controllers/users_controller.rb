class UsersController < ApplicationController
  
 end


private
def user_params
 params.require(:user).permit(:name)
end
end
