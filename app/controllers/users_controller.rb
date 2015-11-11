class UsersController < ApplicationController

  def show
    @user = User.find(params[:id] || current_user.id)
    @items = @user.items
  end

  private

  def user_params
   params.require(:user).permit(:name)
  end
end
