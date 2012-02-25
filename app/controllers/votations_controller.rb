class VotationsController < ApplicationController
  
  before_filter :proccess_votes, :only => :create
  def index
    @votation = Votation.find params[:id]
  end
  
  def create
    @votos.each {|voto|
      Vote.create(:option_value_id => voto)
    }
    redirect_to accounts_path
  end
  
  
  def proccess_votes
    votes = params[:vote]
    votos = []
    votes.each do |vote|
      params[:vote].map {|v| votos << v.last if v.last.class != Array && !votos.include?(v.last) }
      params[:vote].map {|v| votos << v.last if v.last.class == Array && !votos.include?(v.last) }
    end
    @votos = votos.flatten
  end
end
