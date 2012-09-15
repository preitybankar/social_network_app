class UsersController < ApplicationController
  def new  
    @user = User.new  
  end  
    
  def create  
    @user = User.new(params[:user])  
    if @user.save  
      redirect_to root_url, :notice => "You Have Registered successfully !"  
    else  
      render "new"  
    end  
  end
 
end
