class WelcomeController < ApplicationController
  before_filter :authenticate_user!
  
  def show
    @tweets = Twitter.user_timeline("tansu_sezen")
  end
  
  def destroy
    
  end
   
end
