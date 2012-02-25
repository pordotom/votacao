class AccountsController < ApplicationController
  
  def index
    @account = Account.new
  end
  
  def login
    @account = Account.find_by_cpf params[:account][:cpf]
    if @account
      session[:user] = @account
      redirect_to votation_path(@account.id)
    else
      redirect_to account_not_found_path
    end
  end
  
  def not_found
  end

end
