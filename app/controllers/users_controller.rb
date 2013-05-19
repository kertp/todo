class UsersController < ApplicationController
def new
  @user = User.new
end

def create
  @user = User.new(params[:user])
  if @user.save
    redirect_to root_url, :notice => "Signed up!"
  else
    render "new"
  end
end

  def self.authenticate params
    user = find_by_email(params[:email])
    if user && user.password_hash == BCrypt::Engine.hash_secret(params[:password], user.password_salt)
      user
    else
      nil
    end      
  end
end
