require 'spec_helper'

describe Vote do
  describe "Relationship with option" do
    before do
      @vote = Vote.new
    end
    
    it "should have vocation" do
      @vote.option = Option.new
      @vote.option.should be_an_instance_of Option
    end
  end
end
