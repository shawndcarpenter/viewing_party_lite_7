class SessionsController < ApplicationController
  def new
  end

  def create
    if User.where(email: params[:email]) != []
      user = User.where(email: params[:email]).first
      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        flash[:notice]="Login successful"
        redirect_to '/'
      else
        flash[:notice]="Invalid Email or Password"
        redirect_to '/login'
      end
    else
      flash[:notice]="Invalid Email or Password"
      redirect_to '/login'
    end
  end

  def destroy
    session[:email] = nil
    flash[:notice]="Logged Out"
    redirect_to '/login'
  end
end
