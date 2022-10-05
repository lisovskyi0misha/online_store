class LandingPageController < ApplicationController
  
    before_action :create_user
    
  def new
    @new_products = Product.order(:created_at).reverse_order
    binding.break

    @brands = Brand.all
    @posters = Poster.all
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