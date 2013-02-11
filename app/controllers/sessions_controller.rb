class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_login(params[:login])
    
    respond_to do |format|
      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        format.html { redirect_to root_url, notice: 'Signed in!' }
      else
        flash.now.alert = "Invalid login or password"
        format.html { render action: "new" }
      end
    end
  end

  def destroy
    session[:user_id] = nil
    respond_to do |format|
      format.html { redirect_to root_url, alert: 'Signed out!' }
    end
  end  
end
