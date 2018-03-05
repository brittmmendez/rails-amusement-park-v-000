class SessionsController < ApplicationController

  def new
<<<<<<< HEAD
    @user=User.new
  end

  def create
    @user=User.find_by(name: params[:user][:name])
      if @user && @user.authenticate(params[:user][:password])
        session[:user_id] = @user.id
        redirect_to @user
      else
        redirect_to login_path
      end
=======
>>>>>>> 05d078b8339d6a535cec4342fadcd6eb49a9f7bd
  end

  def destroy
    session.delete :user_id
    redirect_to '/'
  end


end
