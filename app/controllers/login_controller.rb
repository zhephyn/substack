class LoginController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find_by_email(params[:email])
    if @user.password == params[params[:password]]
      session[:current_user_id] = @user.id
      flash[:notice] = "You have logged in successfully"
    end
  end

  def destroy
    session.delete[:current_user_id]
    flash[:notice] = "You have successfully been logged out"
  end

end
