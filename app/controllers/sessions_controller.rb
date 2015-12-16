class SessionsController < ApplicationController
  def new

  end

  def create
    data = params[:session_data]
    @user = User.find_by_email(data[:email])

    if !@user.nil?
      # User is in the system
      if @user.authenticate(data[:password])
        # User is authenticated
        session[:user_id] = @user.id
        redirect_to root_path
      else
        # User is not authenticated
        flash.now[:error] = "Try Again!"
        render :new
      end
    else
      # User is not in the system
      flash[:error] = "Try to Create a New User"
      redirect_to new_user_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end











end
