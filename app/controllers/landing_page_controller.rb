class LandingPageController < ApplicationController
  
    before_action :create_user
    
  def new
    @new_products = Product.order(:created_at).includes(:brand).reverse_order
    @brands = Brand.all
    @posters = Poster.all
  end

  def create
    begin
      Users::Signup.new(params, @user).call
      flash[:success] = 'You`ve been successfully signed up'
    rescue AuthenticationError => e
      flash[:error] = e.message
    end
    redirect_to root_path
  end

  private

  def create_user
    @user = User.new
  end
end