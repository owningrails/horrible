class AccountsController < ApplicationController
  def new
    @account = Account.new
    @user = @account.users.new
  end

  def create
    @account = Account.new(account_params)
    @user = @account.users.new(user_params)

    if @account.save
      render text: @user.inspect
    else
      render :new
    end
  end

  private
    def account_params
      params.require(:account).permit(:domain, :billing_email)
    end

    def user_params
      params.require(:account).require(:user).permit(:name, :email)
    end
end
