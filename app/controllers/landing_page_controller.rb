class LandingPageController < ApplicationController
  
    before_action :create_user
    
  def new
    @pictures = Product.first(4)
    # binding.break
  end

  def create
    @user.name = params[:user][:name]
    if @user.valid?
        @user.save
    else 
        raise AuthenticationError, 'Enter a name' 
    end

  end

  private

  def create_user
    @user = User.new
  end
end