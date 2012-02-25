require 'spec_helper'

describe Account do
  describe "Relationship with votation" do
    before do
      @account = Account.new
    end
    
    it "should have vocation" do
      @account.votation = Votation.new
      @account.votation.should be_an_instance_of Votation
    end
  end
end
