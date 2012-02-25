require 'spec_helper'

describe Option do
  describe "Relationship with votation" do
    before do
      @option = Option.new
    end
    
    it "should have vocation" do
      @option.votation = Votation.new
      @option.votation.should be_an_instance_of Votation
    end
  end
end
