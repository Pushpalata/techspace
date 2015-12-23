class HomeController < ApplicationController

  def index
#    render :layout => "dashing/dashboard"
  end
  
  def login_activity
  end
  
  def full_activity
  end
  
  def my_profile
    @user = current_user
  end
  
end
