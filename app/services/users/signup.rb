module Users
  class Signup

    def initialize(params, user)
      @params = params[:user]
      @user = user
    end

    def call
      save_user
      @user
    end

    private

    def save_user
      @user.name = @params[:name]
      @user.email = @params[:email]
      @user.phone = @params[:phone]
      @user.password = @params[:password]
      @user.password_confirmation = @params[:password_confirmation]
      binding.break

      if @user.valid?
        @user.save
      else
        raise AuthenticationError, @user.errors.full_messages
      end
    end
  end
end