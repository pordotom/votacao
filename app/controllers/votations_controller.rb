class VotationsController < ApplicationController
  
  before_filter :proccess_votes, :only => :create
  def index
    @votation = Votation.find params[:id]
  end
  
  def create
    @votos.each {|voto|
      Vote.create(:option_value_id => voto)
    }
    update_account
    redirect_to accounts_path
  end
  
  private
  def proccess_votes
    votes = params[:vote]
    votos = []
    votes.each do |vote|
      params[:vote].map {|v| votos << v.last if vote_included? v.last, votos }
      params[:vote].map {|v| votos << v.last if option_included? v.last, votos }
    end
    @votos = votos.flatten
  end
  
  def update_account
    debugger
    account = Account.find params[:account_id]
    if account
      account.voted = true
      account.save
    end
  end
  
  def vote_included? vote, votos
    vote.class != Array && !votos.include?(vote)
  end
  
  def option_included? option, votos
    option.class == Array && !votos.include?(option)
  end
end
