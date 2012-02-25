class AccountsController < ApplicationController
  
  def index
    @account = Account.new
  end
  
  def login
    account = Account.find_by_cpf params[:account][:cpf]
    if account
      session[:user] = account
      redirect_to account_locked_path if account.voted
      redirect_to votation_path(account.id) unless account.voted
    else
      redirect_to account_not_found_path
    end
  end
  
  def not_found
  end
  
  def locked
  end

end
